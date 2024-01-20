import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
// import 'package:circle_app/model/api/group/group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// class TalkPage extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final latestChatGroups = ref.watch(GetGroupsLatestChatProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Talk Page'),
//       ),
//       body: _buildBody(context, latestChatGroups),
//     );
//   }

//   Widget _buildBody(BuildContext context, AsyncValue<List<Group?>> latestChatGroups) {
//     return latestChatGroups.when(
//       loading: () => CircularProgressIndicator(),
//       data: (groups) {
//         return ListView.builder(
//           itemCount: groups.length,
//           itemBuilder: (context, index) {
//             final group = groups[index];
//             return ListTile(
//               title: Text(group?.name ?? 'Unknown'),
//               // 他のデータを表示する場合はここに追加
//             );
//           },
//         );
//       },
//       error: (error, stackTrace) {
//         return Center(
//           child: Text('Error: $error'),
//         );
//       },
//     );
//   }
// }


class TalkPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserState = ref.watch(UserProvider);
    // hook_consumer_widgetを使用してGetGroupsLatestChatProviderから提供される状態を監視
    final talk_groups = ref.watch(GetGroupsLatestChatProvider);
    final getGroupsLatestChatNotifier = ref.read(GetGroupsLatestChatProvider.notifier);


    // useEffect(() {
    //   // ページが初めて構築された時や UserState.id が変更された時にのみデータをフェッチ
    //   if (UserState.id != null && getGroupsLatestChatNotifier.loading) {
    //     getGroupsLatestChatNotifier.getGroupsLatestChat(UserState.id!);
    //   }
    // }, [UserState.id, getGroupsLatestChatNotifier.loading]);
    useEffect(() {
      // ページが初めて構築された時や UserState.id が変更された時にのみデータをフェッチ
      print("getGroupsLatestChatNotifier.loading");
      print(getGroupsLatestChatNotifier.loading);
      if (UserState.id != null && !getGroupsLatestChatNotifier.loading) {
        getGroupsLatestChatNotifier.getGroupsLatestChat(UserState.id!);
      }
    }, [UserState.id,getGroupsLatestChatNotifier.loading]);

    print(talk_groups);
    print(getGroupsLatestChatNotifier.loading);
  return Scaffold(
  appBar: AppBar(
    title: Text('Talk Widget'),
  ),
  body: talk_groups == null
      ? Center(
          child: CircularProgressIndicator(), // ローディング中はプログレスインジケータを表示
        )
      : talk_groups.groups == null || talk_groups.groups!.isEmpty
          ? Center(
              child: Text('No groups available'), // グループが存在しない場合のメッセージ
            )
          : ListView.builder(
              itemCount: talk_groups.groups!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(talk_groups.groups![index]?.name ?? ''),
                );
              },
            ),
);
  }
}

