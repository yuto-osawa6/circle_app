import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/controller/lang_controller.dart';
import 'package:circle_app/model/api/user.dart';
import 'package:circle_app/model/state/navigate.dart';
import 'package:circle_app/repository/user_create.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:circle_app/utils/method/apierror.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/view_model/signup/signup_view_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'package:circle_app/model/api/result.dart';
// import 'package:yochan/model/task_model.dart';
import 'package:circle_app/model/state/lang.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


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

  
  // setUser
  void setCurrentUser(WidgetRef ref,String? idtoken,String langCode) async {
    final repository = ref.read(createUserRepostitoryProvider);
    // トークンの状態を監視
    final currentUserState= ref.watch(UserProvider);
    final signState= ref.watch(SignProvider);
    final signStateNotifier= ref.watch(SignProvider.notifier);


    // final langState = ref.watch(LangProvider);
    print(idtoken);
    print("currentUserState.token");
    state = state.copyWith(token: "1");
    await repository.fetchUsers("Bearer ${idtoken}").then((result) {
    result.when(
      success: (value) {
          // check1 situation
          print("signState09");
          print("${signState.situation}");
          if(signState.situation == true){
            messageHandleSnack2(langCode);
            signStateNotifier.setSituation(false);
          }
          print(value);
          print(value.email);
          print("value----");
          // setCurrentUserEmail(value.email);
          // print("signState09");
          // // print("${signState.situation}");
          state = UserModel(email: value.email);
          // return value;
        },
      failure: (error) {
         // check1 situation エラー通常でも表示させるかどうか。
        print("error fetchuser");
        print(error.message);
        print(error.response?.statusCode);
        apiError(error.response?.statusCode,error.message,langCode);
        print("error fetchuser");

      // ref
      //   .read(errorMessageProvider.notifier)
      //   .update((state) => state = error.response?.statusCode.toString());
    });
      FlutterNativeSplash.remove();
    });
  }  

  // google
  // void googleLogin (context,WidgetRef ref)async {
  //     state = state.copyWith(token: "1",email: "aa@aa");
  //     final _LangNotifier = ref.watch(LangProvider.notifier);
  //     final token = await AuthService().signInWithGoogle();
  //     print("aa98");
  //     if(token == null){
  //       print("aa990");
  //       return;
  //     }
  //     final FirebaseAuth _auth = FirebaseAuth.instance;
  //     Locale locale = Localizations.localeOf(context);
  //     print(_auth.currentUser);
  //     print("aa991");
  //     final idtoken = await _auth.currentUser?.getIdToken();
  //     print(idtoken);
  //     setCurrentUserToken("Bearer ${idtoken}");
  //     // // check したいらない 試しコード
  //     // // _UserNotifier.setCurrentUserEmail(email);
  //     // _LangNotifier.setCurrentLang(locale.languageCode);
  //     // setCurrentUser(ref,idtoken,locale.languageCode);
  //     // final asyncValue = ref.watch(userDataProvider2);
  //     // print("asyncValue");
  //     // print(asyncValue);
  //     // print("asyncValue");
  //   }

  // ログインされてるかどうかの判別
  bool judgeSigned () {
    bool signed =  state.email == null ? false : true;
    return signed;
  }
}

// HomePageNotifierの状態を管理する
final UserProvider =
    StateNotifierProvider.autoDispose<UserNotifier, UserModel>(
  (ref) => UserNotifier(),
);

// final LangProvider2 =
//     StateNotifierProvider.autoDispose<LangNotifier, LangModel>(
//   (ref) => LangNotifier(),
// );

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
  final langState = ref.watch(LangProvider);
  
  print("token2");
  print(currentUserState.token);
  print("token2");
  // return await repository.fetchUsers(currentUserState.token);

  return await repository.fetchUsers(currentUserState.token).then((result) {
    result.when(
      success: (value) {
          messageHandleSnack2(langState.lang);
          return value;
        },
      failure: (error) {
        print("error fetchuser");
        print(error.message);
        print(error.response?.statusCode);
        apiError(error.response?.statusCode,error.message,langState.lang);
        print("error fetchuser");

      // ref
      //   .read(errorMessageProvider.notifier)
      //   .update((state) => state = error.response?.statusCode.toString());
    });
  });
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



// APIの取得を非同期で管理するためのProviderを作成
final userDataProvider2 = FutureProvider.autoDispose<UserModel?>((ref) async {
  // Repositoryのインスタンスを取得
  final repository = ref.read(createUserRepostitoryProvider);
  // // // トークンの状態を監視
  final currentUserState= ref.watch(UserProvider);
  final langState = ref.watch(LangProvider);
  
  print("token23");
  // print(currentUserState.token);
  print("token23");
  // return await repository.fetchUsers(currentUserState.token);

  return await repository.fetchUsers(currentUserState.token).then((result) {
    result.when(
      success: (value) {
          messageHandleSnack2(langState.lang);
          print("value");
          print(value);
          print("value");
          return value;
        },
      failure: (error) {
        print("error fetchuser3");
        print(error.message);
        print(error.response?.statusCode);
        apiError(error.response?.statusCode,error.message,langState.lang);
        print("error fetchuser3");

      // ref
      //   .read(errorMessageProvider.notifier)
      //   .update((state) => state = error.response?.statusCode.toString());
    });
  });
});