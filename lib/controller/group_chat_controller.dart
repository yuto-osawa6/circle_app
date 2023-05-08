import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:circle_app/repository/group.dart';
import 'package:circle_app/repository/group_chat.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:circle_app/model/api/group/user_groups.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// create
// class GroupChatContentCreateNotifier extends StateNotifier<GroupChatContentCreate> {
//   // 初期値の指定
//   GroupChatContentCreateNotifier(this.ref) : super(null);
//   final Ref ref;

//   void setNameforGroup(String name) async {
//     state = state.copyWith(name: name);
//   }

//   // グループ作成
//   void setCreateGroup(
//       String idtoken, GroupCreate group, BuildContext context) async {
//     final repository = ref.read(GroupCreateRepostitoryProvider);
//     await repository.fetchCreateGroup(idtoken, group).then((result) {
//       result.when(success: (value) {
//         // state = state.copyWith(value);
//         print(value);
//         state = value;
//         if (value.id != null) {
//           print(value.id);
//           final id = value.id;
//           Navigator.pushNamed(context, '/group/:id', arguments: {'id': id});
//           // 
//           final new_group = Group(id:value.id!,name:value.name,level:value.level!);
//           print(new_group);
//           ref.read(groupListProvider.notifier).addGroup(new_group);
//           print("new_group");
//         }
//         // Navigator.pushNamed(context, '/email');
//         // return value;
//       }, failure: (error) {
//         // check1 situation エラー通常でも表示させるかどうか。
//         print("error fetchuser");
//         print(error.message);
//         print(error.response?.statusCode);
//         // doit1 グループ追加したことがアナウンスされるように。
//         // apiError(error.response?.statusCode,error.message,langCode);
//         print("error fetchuser");

//         // ref
//         //   .read(errorMessageProvider.notifier)
//         //   .update((state) => state = error.response?.statusCode.toString());
//       });
//     });
//   }
// }

// final GroupChatCreateContentProvider =
//     StateNotifierProvider.autoDispose<GroupCreateNotifier, GroupCreate>(
//   (ref) => GroupCreateNotifier(ref),
// );

// // Repository(APIの取得)を管理するためのProviderを作成
// // create 使ってない、非推奨なため。
// final GroupChatRepostitoryProvider =
//     Provider((ref) => GroupChatRepository());



// class GroupCreateNotifier extends StateNotifier<GroupChatContentCreate> {
//   final GroupChatRepository _groupChatRepository;

//   GroupCreateNotifier(this._groupChatRepository) : super(GroupChatContentCreate());

//   Future<void> createGroupChat(int groupId, GroupChatContentCreate body) async {
//     // state = GroupChatContentCreate.loading();
//     final result = await _groupChatRepository.fetchCreateGroupChatContent(groupId, body);
//     result.when(success: (data) {
//       state = data;
//     }, failure: (error) {
//       // state = GroupChatContentCreate.error(error.toString());
//     });
//   }
// }

// final groupCreateProvider = StateNotifierProvider<GroupCreateNotifier, GroupChatContentCreate>(
//   (ref) => GroupCreateNotifier(ref.read(groupChatRepositoryProvider)),
// );

class GroupCreateNotifier extends StateNotifier {
  final GroupChatRepository _groupChatRepository;

  GroupCreateNotifier(this._groupChatRepository) : super(null);

  Future<void> createGroupChat(int groupId, GroupChatContentCreate body) async {
    // state = GroupChatContentCreate.loading();
    final result = await _groupChatRepository.fetchCreateGroupChatContent(groupId, body);
    result.when(success: (data) {
      print(data);
      // state = data;
    }, failure: (error) {
      // state = GroupChatContentCreate.error(error.toString());
    });
  }
}

final groupCreateProvider = StateNotifierProvider(
  (ref) => GroupCreateNotifier(ref.read(GroupChatRepostitoryProvider)),
);

final GroupChatRepostitoryProvider =
    Provider((ref) => GroupChatRepository());

