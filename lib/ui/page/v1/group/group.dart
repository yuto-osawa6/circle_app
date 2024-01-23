

import 'dart:convert';

import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/task.dart';
import 'package:circle_app/service/task_service.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/utils/style/fontstyle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:http/http.dart' as http;

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   State<Home> createState() => _HomeState();
// }

class GroupV1 extends HookConsumerWidget {
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final _UserState = ref.watch(UserProvider);
    final _UserNotifier = ref.watch(UserProvider.notifier);
    Locale locale = Localizations.localeOf(context);

    // backendからgroup 所属している一覧の取得。
    final pagingController = ref.watch(groupListProvider);
    print("aa");

    print("aa");



    print(locale); 
    print(getJugdeLanguage(context));
    // print(_UserState);
    print("pagingController.value");
    print("pagingController.value:${pagingController.value}");
    print("pagingController.value");

   return Scaffold(
  appBar: AppBar(
    title: const Text("Groups"),
    actions: <Widget>[
    _UserState.email != null
        ? Row(
            children: [
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  // ログアウト処理
                  await FirebaseAuth.instance.signOut();
                  _UserNotifier.setCurrentUserEmail(null);

                  final token =
                      await FirebaseAuth.instance.currentUser?.getIdToken();
                  print(token);
                  print("token_home");
                },
              ),
              IconButton(
                icon: Icon(Icons.add), // 例: 追加するアイコン
                onPressed: () {
                  // アイコンがタップされたときの処理を追加
                  print("Add icon tapped");
                  Navigator.pushNamed(context, '/group_new');
                },
              ),
            ],
          )
        : Text("N"),
  ],
  ),
  body: DefaultTextStyle.merge(
    style: descTextStyle,
    child: Center(
      child: PagedGridView<int, Group>(
        pagingController: pagingController,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:  150.0, // 1つのアイテムの最大横幅
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0, // グリッドアイテムのアスペクト比
        ),
        builderDelegate: PagedChildBuilderDelegate<Group>(
          itemBuilder: (context, item, index) {
            return InkWell(
              onTap: () {
                print("groupShow");
                print(item);
                Navigator.pushNamed(
                  context,
                  '/group/:id',
                  arguments: {'id': item.id, 'group': item},
                );
              },
              child: Card(
                elevation: 3.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.primaries[index % Colors.primaries.length],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            "${item.id}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.name,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ),
  ),
);



  }
}