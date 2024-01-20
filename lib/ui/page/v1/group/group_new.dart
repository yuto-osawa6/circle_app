import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/tag/tag.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:riverpod/riverpod.dart';

class GroupNewWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagsList = useState<List<Tag>>([]);
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController(); // 追加
    final tagController = useTextEditingController();
    final _groupCreateNotifier = ref.watch(GroupCreateProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Groups App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'グループ名 ()',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController, // 追加
              decoration: InputDecoration(
                hintText: 'グループの概要・説明',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: tagController,
              decoration: InputDecoration(
                hintText: 'タグ ＊検索されやすいワードで見つけやすくしよう.',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                tagsList.value = [...tagsList.value, Tag(tag_name: tagController.text)];
                tagController.clear();
              },
              child: Text('タグを追加'),
            ),
            SizedBox(height: 20),
            Text(
              'Tags:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tagsList.value.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tagsList.value[index].tag_name),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                _groupCreateNotifier.setNameforGroup("くくりとう");
                // _groupCreateNotifier.setDescriptionforGroup(descriptionController.text); // 追加
                final token = await AuthService().getCurrentUserToken();
                final groupCreate = GroupCreate(
                  name: nameController.text,
                  level: 0,
                  tags:tagsList.value,
                  description: descriptionController.text,
                  // 追加
                  // description: descriptionController.text,
                );
                _groupCreateNotifier.setCreateGroup(token!, groupCreate, context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
