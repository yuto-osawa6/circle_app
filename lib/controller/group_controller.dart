import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/repository/group.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:circle_app/model/api/group/user_groups.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// create
class GroupCreateNotifier extends StateNotifier<GroupCreate> {
  // 初期値の指定
  GroupCreateNotifier(this.ref) : super(GroupCreate(name: "", level: null));
  final Ref ref;

  void setNameforGroup(String name) async {
    state = state.copyWith(name: name);
  }

  // グループ作成
  void setCreateGroup(
      String idtoken, GroupCreate group, BuildContext context) async {
    final repository = ref.read(GroupCreateRepostitoryProvider);
    await repository.fetchCreateGroup(idtoken, group).then((result) {
      result.when(success: (value) {
        // state = state.copyWith(value);
        print(value);
        state = value;
        if (value.id != null) {
          print(value.id);
          final id = value.id;
          Navigator.pushNamed(context, '/group/:id', arguments: {'id': id});
          // 
          final new_group = Group(id:value.id!,name:value.name,level:value.level!);
          print(new_group);
          ref.read(groupListProvider.notifier).addGroup(new_group);
          print("new_group");
        }
        // Navigator.pushNamed(context, '/email');
        // return value;
      }, failure: (error) {
        // check1 situation エラー通常でも表示させるかどうか。
        print("error fetchuser");
        print(error.message);
        print(error.response?.statusCode);
        // doit1 グループ追加したことがアナウンスされるように。
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
// create 使ってない、非推奨なため。
final GroupCreateRepostitoryProvider =
    Provider((ref) => GroupCreateRepository());
// get
final GetUserGroupsRepositoryProvider =
    Provider((ref) => GetUserGroupsRepository());

// //

// class GetUserGroupNotifier extends StateNotifier<UserGroup> {
//   // 初期値の指定
//   GetUserGroupNotifier(this.ref) : super(UserGroup());
//   final Ref ref;

//   // void setNameforGroup(String name) async {
//   //   state = state.copyWith(name: name);
//   // }

//   // userGroupを取得する
//   void getUserGroup(
//       String idtoken, GroupCreate group, BuildContext context) async {
//     // final user = ref.watch(UserProvider);
//     final token = await AuthService().getCurrentUserToken();
//     final repository = ref.read(GetUserGroupsRepositoryProvider);
//     final user = ref.read(UserProvider);
//     final page = ref.read(pageUserGroupProvider);

//     await repository.getUserGroups(token, user.id, page).then((result) {
//       result.when(success: (value) {
//         return value;
//       }, failure: (error) {
//         print(error);
//         return null;
//         // ref
//         //   .read(errorMessageProvider.notifier)
//         //   .update((state) => state = error.response?.statusCode.toString());
//       });
//     });
//   }
// }

// final getUserGroupProvider = StateNotifierProvider<GetUserGroupNotifier, UserGroup>(
//   (ref) => GetUserGroupNotifier(ref),
// );

// // final getUserGroupFutureProvider2 = FutureProvider.autoDispose<UserGroup?>((ref) async {
// final getUserGroupFutureProvider2 = FutureProvider.autoDispose<List<Group>>((ref) async {
// // final getUserGroupFutureProvider2 = FutureProvider<List<Group>>((ref) async {

//   final user = ref.watch(UserProvider);
//   final token = await AuthService().getCurrentUserToken();
//   final repository = ref.read(GetUserGroupsRepositoryProvider);
//   final page = ref.watch(pageUserGroupProvider);

//   final posts = await repository.getUserGroups(token, user.id, page);

//   return posts.when(
//     success: (value) {
//       // 既存のデータに新しいデータを追加する
//       // return value;
//       final existingData = ref.read(userGroupListProvider);
//       final newData = value.groups;
//       existingData.addAll(newData);
//       print(existingData.length);
//       print("existingdata");
//       // return UserGroup(groups: existingData);
//       // ref.read(userGroupListProvider.notifier).addAll(newData);
//       return existingData;
//       // ref.read(userGroupListProvider.notifier).addAll(newData);
//     },
//     failure: (error) {
//       print(error);
//       return [];
//     },
//   );
// });

// class PageUserGroupNotifier extends StateNotifier<int> {
//   PageUserGroupNotifier() : super(1);

//   void setPage(int page) {
//     state = page;
//   }
//   void incrementPage() async{
//     await Future.delayed(Duration(milliseconds: 100));
//     state = state + 1;
//   }
// }

// final pageUserGroupProvider = StateNotifierProvider<PageUserGroupNotifier, int>((ref) {
//   return PageUserGroupNotifier();
// });

// class UserGroupListNotifier extends StateNotifier<List<Group>> {
//   UserGroupListNotifier() : super([]);

//   void addAll(List<Group> groups) {
//     state.addAll(groups);
//   }
// }

// final userGroupListProvider =
//     StateNotifierProvider<UserGroupListNotifier, List<Group>>((ref) {
//   return UserGroupListNotifier();
// });

// final getUserGroupProvider =
//     StateNotifierProvider<GetUserGroupNotifier, UserGroup>(
//   (ref) => GetUserGroupNotifier(ref),
// );

// // final getUserGroupFutureProvider2 = FutureProvider.autoDispose<UserGroup?>((ref) async {
// final getUserGroupFutureProvider2 =
//     FutureProvider.autoDispose<List<Group>>((ref) async {
// // final getUserGroupFutureProvider2 = FutureProvider<List<Group>>((ref) async {

//   final user = ref.watch(UserProvider);
//   final token = await AuthService().getCurrentUserToken();
//   final repository = ref.read(GetUserGroupsRepositoryProvider);
//   // final page = ref.watch(pageUserGroupProvider);

//   final posts = await repository.getUserGroups(token, user.id, page);

//   return posts.when(
//     success: (value) {
//       // 既存のデータに新しいデータを追加する
//       return value.groups;
//       // // final existingData = ref.read(userGroupListProvider);
//       // final newData = value.groups;
//       // // existingData.addAll(newData);
//       // print(existingData.length);
//       // print("existingdata");
//       // // ref.read(userGroupListProvider.notifier).addAll(newData);
//       // return existingData;
//       // // ref.read(userGroupListProvider.notifier).addAll(newData);
//     },
//     failure: (error) {
//       print(error);
//       return [];
//     },
//   );
// });

// class PageUserGroupNotifier extends StateNotifier<int> {
//   PageUserGroupNotifier(this.ref) : super(1);
//   Ref ref;
//   // bool _isLoading = false;
//   // bool get isLoading => _isLoading;

//   // void setLoading(bool value) {
//   //   _isLoading = value;
//   // }

//   void increment() {
//     state = state + 1;
//   }

//   void setPage(int page) {
//     state = page;
//   }

//   void incrementPage() async {
//     print("a:{$state}");
//     final isLoading = ref.watch(userGroupLoadingProvider);
//     print("a:${isLoading}");
//     print("b:${mounted}");
//     print("b--------");
//     // if (!isLoading) {
//       ref.read(userGroupLoadingProvider.notifier).state = true;
//       // await Future.delayed(Duration(seconds: 1));
//         increment();
//         // ref.read(userGroupLoadingProvider.notifier).state = false;
//        print("b:${mounted}");
//     // }
//     print("a:${isLoading}");
//   }
// }

// final pageUserGroupProvider =
//     StateNotifierProvider<PageUserGroupNotifier, int>((ref) {
//   return PageUserGroupNotifier(ref);
// });

// class UserGroupListNotifier extends StateNotifier<List<Group>> {
//   UserGroupListNotifier(this.ref) : super([]);
//   final Ref ref;
//   // bool _isLoading = false;
//   // bool get isLoading => _isLoading;

//   // void setLoading(bool value) {
//   //   _isLoading = value;
//   // }

//   void getUserGroup(BuildContext context) async {
//     final token = await AuthService().getCurrentUserToken();
//     final repository = ref.read(GetUserGroupsRepositoryProvider);
//     final user = ref.read(UserProvider);
//     final page = ref.read(pageUserGroupProvider);
//     //
//     // final loading = ref.read(userGroupLoadingProvider);
//     try {
//       final result = await repository.getUserGroups(token, user.id, page);
//       result.when(
//         success: (value) {
//           if (value.groups.length == 0) {
//             ref.read(userGroupListboolProvider.notifier).state = true;
//           }
//           final updatedGroups = [...state, ...value.groups];
//           state = updatedGroups;
//         },
//         failure: (error) {
//           print(error);
//         },
//       );
//     } catch (error) {
//       print(error);
//     }
//     // _isLoading = false;
//   }
// }

// final userGroupListProvider =
//     StateNotifierProvider<UserGroupListNotifier, List<Group>>((ref) {
//   return UserGroupListNotifier(ref);
// });

// final userGroupListboolProvider = StateProvider((ref) => false); // 取得したデーターが空かどうか
// final userGroupLoadingProvider = StateProvider((ref) => false); // pageが+1される挙動が複数回実行されるのを防ぐ目的

//

final characterListProvider = FutureProvider.autoDispose((ref) async {
  final pagingController = PagingController(firstPageKey: 0);
  ref.onDispose(pagingController.dispose);
  final token = await AuthService().getCurrentUserToken();
  final user = ref.read(UserProvider);
  final repository = ref.read(GetUserGroupsRepositoryProvider);
  const _pageSize = 20;

  pagingController.addPageRequestListener((pageKey) async {
    try {
      final result = await repository.getUserGroups(token, user.id, pageKey);
      result.when(
        success: (value) {
          final isLastPage = value.groups.length < _pageSize;
          if (isLastPage) {
            pagingController.appendLastPage(value.groups);
          } else {
            final nextPageKey = pageKey + value.groups.length;
            pagingController.appendPage(value.groups, nextPageKey);
          }
        },
        failure: (error) {
          print(error);
        },
      );
    } catch (error) {
      pagingController.error = error;
    }
  });

  return pagingController;
});

// final groupListProvider = StateNotifierProvider((ref) => GroupListNotifier(ref));

final groupListProvider =
    StateNotifierProvider<GroupListNotifier, PagingController<int, Group>>(
        (ref) {
  return GroupListNotifier(ref);
});
// final pagingController = PagingController<int, Group>(firstPageKey: 0);

// final userGroupListProvider =
//     StateNotifierProvider<GroupListNotifier, List<Group>>((ref) {
//   return UserGroupListNotifier();
// });

class GroupListNotifier extends StateNotifier<PagingController<int, Group>> {
  static const _pageSize = 20;

  GroupListNotifier(this.ref) : super(PagingController(firstPageKey: 1)) {
    state.addPageRequestListener((pageKey) {
      print("_fetchPage(pageKey);");
      _fetchPage(pageKey);
    });
  }
  Ref ref;

  Future<void> addGroup(Group group) async {
    // print("呼ばれた");
    // print(state);
    // print(state.itemList);
    // print(state.itemList?.length);
    // state.itemList?.add(group);
    // print(state.itemList?.length);
    // ref.read(groupListProvider.notifier).itemList = state.itemList ?? [];

    // final updatedList = [...state.itemList!, group];
    // final isLastPage = state.lastItem?.pageKey == state.;
    // if (isLastPage) {
    //   state.itemList.add(group);
    // } 
    // print(state.nextPageKey!);
    // final updatedList = [...state.itemList!, group];
    // final isLastPage = (state.nextPageKey! - 1) * 20 != state.itemList?.length;
    // if (isLastPage) {
    //   state.appendLastPage(updatedList);
    // } else {
      // state.itemList = updatedList;
    // }

    if (state.nextPageKey != null) {
      // print(state.nextPageKey);
      // final updatedList = [...state.itemList!, group];
      // state.itemList = updatedList;

    }
    // final controller = ref.read(groupListProvider.notifier);

    // リストに新しいグループを追加する処理
    state.itemList?.add(group);

    // 状態を更新して、リストに新しいグループを反映
    final controller = ref.read(groupListProvider.notifier);
    // controller.state = PagingController(firstPageKey: 1);

    // リストが更新されたら、PagingControllerをrefreshしてリストを更新
    controller.state.refresh();
  }


  Future<void> _fetchPage(int pageKey) async {
    print("_fetchPage(pageKey)2;");
    final token = await AuthService().getCurrentUserToken();
    final user = ref.read(UserProvider);
    final repository = ref.read(GetUserGroupsRepositoryProvider);
    try {
      // final newItems = await RemoteApi.getGroupList(pageKey, _pageSize);
      print(pageKey);
      final result = await repository.getUserGroups(token, user.id, pageKey);
       print(result);
      result.when(
        success: (value) {
          final isLastPage = value.groups.length < _pageSize;
          print(isLastPage);
          print(value.groups.length);
          if (isLastPage) {
            state.appendLastPage(value.groups);
          } else {
            final nextPageKey = pageKey + 1;
            state.appendPage(value.groups, nextPageKey);
          }
        },
        failure: (error) {
          print(error);
          print("error2");

        },
      );
    } catch (error) {
      // error = error;
      print("error");
    }
  }

  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}
