

import 'package:circle_app/model/state/sign_model.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/judgeLocate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class SignUpNotifier extends StateNotifier {
//   // 初期値の指定
//   SignUpNotifier() : super();

//   // void onTapItem(int index) {
//   //   state = state.copyWith(page: index);
//   // }

//   // メインカウントを+1する
//   // void increaseMainCount() async {
//   //   state = state.copyWith(mainCount: state.mainCount + 1);
//   // }

//   // // サブカウントを+1する
//   // void increaseSubCount() async {
//   //   state = state.copyWith(subCount: state.subCount + 1);
//   // }

//   // // すべてのカウントを0に戻す
//   // void resetAllCount() async {
//   //   state = state.copyWith(
//   //     mainCount: 0,
//   //     subCount: 0,
//   //   );
//   // }

// }

class SignUpNotifier extends StateNotifier<SignModel> {
  // 初期値の指定
  SignUpNotifier() : super(SignModel());
  //  // 入力されたメールアドレス
  //   final newUserEmail = useState("");
  //   // 入力されたパスワード
  //   final newUserPassword = useState("");
  //   // 入力されたメールアドレス（ログイン）
  //   final loginUserEmail = useState("");
  //   // 入力されたパスワード（ログイン）
  //   final loginUserPassword = useState("");
  //   // 登録・ログインに関する情報を表示
  //   final infoText = useState("");
  //   // open password
  //   final openEye = useState<bool>(false);

    void changeEmailText(String value){
      // state.newUserEmail = value;
      state = state.copyWith(newUserEmail: value);
    }
    void changePasswordText(String value){
      // newUserPassword.value = value;
      state = state.copyWith(newUserPassword: value);
    }
    void clickOpenEye (){
      // openEye.value == true?openEye.value = false:openEye.value =true;
      // newUserEmail.value = "aaa";
      state = state.copyWith(openEye: state.openEye == true?false:true);
    }

    void handleSignUp (BuildContext context)async {
      print("aaa");
      print(state.newUserEmail);
      print(state.newUserPassword);
      try
        {
          // メール/パスワードでログイン
          final FirebaseAuth auth = FirebaseAuth.instance;
          final UserCredential result =
              await auth.createUserWithEmailAndPassword(
            email: state.newUserEmail,
            password: state.newUserPassword,
          );
          String idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
          print(idToken);
          print("aaab");
          print(result.user!.emailVerified);
          print("bbbb");
          if(result.user!.emailVerified){
            print("bbbb2");
          }else{
            print("bbbb5");
            errorHandleSnack(context,"mailアドレスを認証してください。");
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("bb4")));
          }
          // final result = await ApiClientCreateUser.fetchApiCreateUser();

          // final apiClient = ApiClientCreateUser();
          // print(await apiClient.fetchApiCreateUser(idToken));

          // dynamic fetchUsers() async {
          //   return await apiClient.fetchApiCreateUser();
          // }
          // ログインに成功した場合
          // final User user = result.user!;
          // setState(() {
          //   infoText = "ログインOK：${user.email}";
          // });
          print("aaa3");
        } on FirebaseAuthException catch (e) {
          print(e.code);
          print(e.message);
          print("aaa245");
          // print(AppLocalizations);
          // Locale locale = Localizations.localeOf(context);

          // // 言語コード取得
          // String languageCode = locale.languageCode;
          print("aaa23");
          print(jugdeLocate(context));  // ja
          print("aaa267");
          errorHandleSnack(context,e.message.toString());
          // result = FirebaseAuthExceptionHandler.handleException(error);
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
          // errorHandleSnack(context,"mailアドレスを認証してください。3");
          // errorHandleSnack(context,"mailアドレスを認証してください。4");
          // ログインに失敗した場合
          // setState(() {
          //   infoText = "ログインNG：${e.toString()}";
          // });
        }
    }

}
final SignProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignModel>(
  (ref) => SignUpNotifier(),
);