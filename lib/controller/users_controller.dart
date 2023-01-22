import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/model/api/user.dart';
import 'package:circle_app/model/state/navigate.dart';
import 'package:circle_app/repository/user_create.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
// import 'package:yochan/model/task_model.dart';

// import 'package:yochan/repository/task_repo.dart';

class UserNotifier extends StateNotifier<UserModel> {
  // 初期値の指定
  UserNotifier() : super(UserModel());
  void setCurrentUserEmail(String? email) async {
    state = state.copyWith(email: email);
  }

  void setCurrentUserToken(String? token) async {
    state = state.copyWith(token: token);
  }
  

}

// HomePageNotifierの状態を管理する
final UserProvider =
    StateNotifierProvider.autoDispose<UserNotifier, UserModel>(
  (ref) => UserNotifier(),
);

// エラーメッセージを管理。isNotEmptyになったらViewのref.listenのコールバックが発火してダイアログ表示
final errorMessageProvider = StateProvider<String?>((_) => '');

// Repository(APIの取得)を管理するためのProviderを作成
final createUserRepostitoryProvider = Provider((ref) => CreateUserRepository());

// APIの取得を非同期で管理するためのProviderを作成
final userDataProvider = FutureProvider.autoDispose<UserModel?>((ref) async {
  // Repositoryのインスタンスを取得
  final repository = ref.read(createUserRepostitoryProvider);
  // トークンの状態を監視
  final currentUserState= ref.watch(UserProvider);
  
  // print("token2");
  print(currentUserState.token);
  // print("token2");
  // return await repository.fetchUsers(currentUserState.token);

  return await repository.fetchUsers(currentUserState.token).then((result) {
      result.when(
        success: (value) => value,
        failure: (error) {
          print("error fetchuser");
          print(error.message);
          print(error.response?.statusCode);
          print("error fetchuser");

          ref
            .read(errorMessageProvider.notifier)
            .update((state) => state = error.response?.statusCode.toString());
        });
  });


  // final a = await repository.fetchUsers(currentUserState.token);
  // return a;


//   final dio = Dio();
//   final client = UserApiClient(dio);
//   // final logger = Logger();
//   final b = client.getFlutterUser(currentUserState.token).then((it) {
//   // logger.i(it);
//   return it;
// }).catchError((Object obj) {
//    final res = (obj as DioError).response;
//    print(res);
//    print("res");
//    print(obj);
//   // non-200 error goes here.
//   // switch (obj.runtimeType) {
//   //   case DioError:
//   //     // Here's the sample to get the failed response error code and message
//   //     final res = (obj as DioError).response;
//   //     logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
//   //     break;
//   //   default:
//   //     break;
//   // }
// });
// return b;
// return a;
});


// import 'package:yochan/repository/task_repo.dart';

// class UserViewModel {
//   final userRepository = UserRepository();
//   dynamic fetchUsers() async {
//     return await userRepository.fetchUsers();
//   }
// }

// final dio = Dio();
// final client = UserApiClient(dio);