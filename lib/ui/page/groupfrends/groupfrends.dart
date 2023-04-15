

import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:circle_app/ui/component/group/user_group_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final nameProvider = StateProvider<String>((ref) => '');

class GroupFrends extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();

    // final 
    // final _counterState = ref.watch( nameProvider );
    // // ⑤状態管理している値を操作できるようにする
    // final _counterNotifier = ref.watch( nameProvider .notifier);

    final _groupCreateNotifier = ref.watch(GroupCreateProvider.notifier);
  return Scaffold(
      appBar: AppBar(
        title: Text('Groups App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter name',
              ),
            ),
            TextField(
              // controller: idController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter id',
              ),
            ),
            TextField(
              // controller: levelController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter level',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async{
                
                _groupCreateNotifier.setNameforGroup("くくりとう");
                final token = await AuthService().getCurrentUserToken();
                final groupCreate = GroupCreate(name:"くくりとう",level:0);
                _groupCreateNotifier.setCreateGroup(token, groupCreate,context);
                // _counterNotifier.state = nameController.text;
                // ref.read(idProvider).state = int.tryParse(idController.text) ?? 0;
                // ref.read(levelProvider).state = int.tryParse(levelController.text) ?? 0;
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            // UserGroupsList2(),
            Container(
              child: UserGroupsList(),
            )
            // group.when(
            //   data: (data) => Column(
            //     children: [
            //       Text(
            //         'Group Name: ${data?.name}',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //       Text(
            //         'Group ID: ${data?.id}',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //       Text(
            //         'Group Level: ${data?.level}',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     ],
            //   ),
            //   loading: () => CircularProgressIndicator(),
            //   error: (error, stackTrace) => Text(
            //     'Failed to load group',
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
