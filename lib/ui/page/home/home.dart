

import 'dart:convert';

import 'package:circle_app/controller/users_controller.dart';
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
// import 'package:http/http.dart' as http;

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   State<Home> createState() => _HomeState();
// }

class Home extends HookConsumerWidget {


  @override
  // void initState() {
  //   super.initState();
  //   // final a = fetchUsers()
  //   // print(fetchUsers());
  //   print("aaa");
  //   // print("aa");
  // }
  
  // print()
  Widget build(BuildContext context,WidgetRef ref) {
    final _UserState = ref.watch(UserProvider);
    final _UserNotifier = ref.watch(UserProvider.notifier);

    Locale locale = Localizations.localeOf(context);
    // final asyncValue = ref.watch(userDataProvider);
    // print("asyncValue----");
    // print(asyncValue);
    // print("----");

  print(locale); 
  // var descTextStyle = TextStyle(
  //     // color: Colors.black,
  //     fontWeight: FontWeight.w700,
  //     fontFamily: getJugdeLanguage(context),
  //     // fontFamily: "NotoSansJP",

  //     // letterSpacing: 0.5,
  //     // fontSize: 50.0,
  //   );
    print(getJugdeLanguage(context));
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("afefefefefe")));
    // print("aaaaa");
    print(_UserState);
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home"),
        actions: <Widget>[
        _UserState.email != null?
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              // ログアウト処理
              // 内部で保持しているログイン情報等が初期化される
              // （現時点ではログアウト時はこの処理を呼び出せばOKと、思うぐらいで大丈夫です）
              // GoogleSignIn googleSign = GoogleSignIn();
              await FirebaseAuth.instance.signOut();
              _UserNotifier.setCurrentUserEmail(null);
              // ログイン画面に遷移＋チャット画面を破棄
              // await Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(builder: (context) {
              //     return LoginPage();
              //   }),
              // );
            },
          )
          :Text("N")

        ],
      ),
      body: DefaultTextStyle.merge(
        style: descTextStyle,
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   // AppLocalizations.of(context)!.auth.hashCode
            // ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
            Text(
              "認証あいあいげういあふぇ",
              style: TextStyle(
                // fontFamily: 'NotoSansJP',
                // fontWeight: FontWeight.w700
              ),
            ),
            Text(
              // check-1 _UserState.email! !が必要な理由
              _UserState.email != null?_UserState.email!:"ログインしていません。",
              style: TextStyle(
                // fontFamily: 'Noto_Serif_JP',
                // fontWeight: FontWeight.w700
              ),
            ),
            // Text(
            //   // check-1 _UserState.email! !が必要な理由
            //   asyncValue.value != null?asyncValue.value!.email!:"null",
            //   style: TextStyle(
            //     // fontFamily: 'Noto_Serif_JP',
            //     // fontWeight: FontWeight.w700
            //   ),
            // ),
            
            // Text(
            //   "認証あいあいげういあふぇういあふぇ",
            //   // style: TextStyle(
            //   //   fontFamily: 'Murecho',
            //   // ),
            //   style: GoogleFonts.notoSansJavanese( // フォントをdotGothic16に指定(
            //   // textStyle: TextStyle(
            //   //   fontSize: 50,
            //   //   ),
            //   )
            // ),
            
          ],
        ),
      ),)
    );
  }
}