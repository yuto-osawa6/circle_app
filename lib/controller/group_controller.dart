

import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/repository/group.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// create
class GroupCreateNotifier extends StateNotifier<GroupCreate> {
  // 初期値の指定
  GroupCreateNotifier(this.ref) : super(GroupCreate(name:"",level: null));
  final Ref ref;

  void setNameforGroup(String name) async {
    state = state.copyWith(name: name);
  }

  
  // グループ作成
  void setCreateGroup(String idtoken,GroupCreate group) async {
    final repository = ref.read(GroupCreateRepostitoryProvider);
    await repository.fetchCreateGroup(idtoken,group).then((result) {
    result.when(
      success: (value) {
        // state = state.copyWith(value);
          state = value;
          // return value;
        },
      failure: (error) {
         // check1 situation エラー通常でも表示させるかどうか。
        print("error fetchuser");
        print(error.message);
        print(error.response?.statusCode);
        // apiError(error.response?.statusCode,error.message,langCode);
        print("error fetchuser");

      // ref
      //   .read(errorMessageProvider.notifier)
      //   .update((state) => state = error.response?.statusCode.toString());
    });
    });
  }  
}


final GroupCreateProvider =
    StateNotifierProvider.autoDispose<GroupCreateNotifier, GroupCreate>(
  (ref) => GroupCreateNotifier(ref),
);

// Repository(APIの取得)を管理するためのProviderを作成
final GroupCreateRepostitoryProvider = Provider((ref) => GroupCreateRepository());


// // 

// final createGroupFutureProvider= FutureProvider.autoDispose<Group?>((ref) async {
//   // Repositoryのインスタンスを取得
//   final repository = ref.read(GroupRepostitoryProvider);
//   final group = ref.watch(GroupProvider);
//   // final group = Group(id:29,name: "Group A", level: 2);

//   final idtoken = "a";

//   final response =  await repository.fetchCreateGroup("Bearer ${idtoken}",group).then((result) {
//     result.when(
//       success: (value) {
//           return value;
//         },
//       failure: (error) {
//          // check1 situation エラー通常でも表示させるかどうか。
//         print("error fetchuser");
//         print(error.message);
//         print(error.response?.statusCode);
//         // apiError(error.response?.statusCode,error.message,langCode);
//         print("error fetchuser");
//         return null;

//       // ref
//       //   .read(errorMessageProvider.notifier)
//       //   .update((state) => state = error.response?.statusCode.toString());
//     });
//     });
// });

// // final createGroupProvider = Provider<Group?>((ref) {
// //   final greeting = ref.watch(createGroupFutureProvider);
// //   return greeting.when(
// //     data: (data) => data,
// //     loading: () => null,
// //     error: (error, stackTrace) => null
// //   );
// // });

// get
