

import 'package:circle_app/model/state/sign_model.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/firebaseAuthError/firebaseAuthError.dart';
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
    void changePasswordText2(String value){
      // newUserPassword.value = value;
      state = state.copyWith(newUserPassword2: value);
    }
    void clickOpenEye (){
      // openEye.value == true?openEye.value = false:openEye.value =true;
      // newUserEmail.value = "aaa";
      state = state.copyWith(openEye: state.openEye == true?false:true);
    }

    // final acs = ActionCodeSettings(
    // // URL you want to redirect back to. The domain (www.example.com) for this
    // // URL must be whitelisted in the Firebase Console.
    // url: 'https://www.example.com/finishSignUp?cartId=1234',
    // // This must be true
    
    // handleCodeInApp: true,
    // iOSBundleId: 'com.example.ios',
    // androidPackageName: 'com.example.android',
    // // installIfNotAvailable
    // androidInstallApp: true,
    // // minimumVersion
    // // androidMinimumVersion: '12'
    // );


    void handleSignUp (BuildContext context)async {
      var acs = ActionCodeSettings(
    // URL you want to redirect back to. The domain (www.example.com) for this
    // URL must be whitelisted in the Firebase Console.
    url: 'https://circle-c701a.firebaseapp.com/',
    // This must be true
    handleCodeInApp: true,
    // iOSBundleId: 'com.circle-c701a.ios',
    // androidPackageName: 'com.circle-c701a.android',
    iOSBundleId: 'com.circle.circle_app.ios',
    androidPackageName: 'com.circle.circle_app.android',
    // installIfNotAvailable
    androidInstallApp: true,
    // minimumVersion
    // androidMinimumVersion: '12'
    );
      // print("aaa");
      // print(state.newUserEmail);
      // print(state.newUserPassword);
      // Navigator.pushNamed(context, '/email');
      // return;
      try
        {
          // メール/パスワードでログイン
          final FirebaseAuth auth = FirebaseAuth.instance;
          auth.sendSignInLinkToEmail(
            // email: state.newUserEmail,
            email: 'ここ',
            actionCodeSettings: acs
          //   password: state.newUserPassword,
          ).catchError((onError) => print('Error sending email verification $onError'))
        .then((value) => print('Successfully sent email verification'));


          // final UserCredential result =
          //     await auth.createUserWithEmailAndPassword(
          //   email: state.newUserEmail,
          //   password: state.newUserPassword,
          // );
          // String idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
          // // print(idToken);
          // print("aaab");
          // Navigator.pushNamed(context, '/email');

          // print(result.user!.emailVerified);
          // print("bbbb");
          // if(result.user!.emailVerified){
          //   print("y-ev");
          // }else{
          //   print("n-ev");
          //   // errorHandleSnack(context,"mailアドレスを認証してください。");
          //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("bb4")));
          //   // Navigator.pushNamed(context, '/email_vertification');
          // }
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
        // } catch (e) {
          print(e);
          // emailが既に登録されていて、認証がまだの場合。
          // if(e.code == "email-already-in-use"){
          //   print("yいえじあ");
          // }
          // try {
          //   if(e.code == "email-already-in-use"){
          //     final FirebaseAuth auth = FirebaseAuth.instance;
          //     final UserCredential result =
          //       await auth.signInWithEmailAndPassword(
          //     email: state.newUserEmail,
          //     password: state.newUserPassword,
          //   );
          //     if(result.user!.emailVerified){
          //     }else{
          //       // errorHandleSnack(context,"mailアドレスを認証してください。");
          //       result.user!.delete();
          //       handleSignUp(context);
          //       print("削除した");
          //       return;
          //     }
          //   }
          // }on FirebaseAuthException catch (e) {
          //   FirebaseAuthError("email-already-in-use",context);
          //   return;
          // }

          // print(e.code);
          FirebaseAuthError(e.code,context);
        }
    }

    void handleConfirmEmail (BuildContext context)async {
      try
        {
          // メール/パスワードでログイン
          final FirebaseAuth auth = FirebaseAuth.instance;
          // auth.sendSignInLinkToEmail(auth,email)
          // final UserCredential result =
          //     await auth.createUserWithEmailAndPassword(
          //   email: state.newUserEmail,
          //   password: state.newUserPassword,
          // );
          // String idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
          // print(idToken);
          print("aaab");
          // print(result.user!.emailVerified);
          print("bbbb");
          // if(result.user!.emailVerified){
            print("bbbb2");
          // }else{
          //   print("bbbb5");
          //   errorHandleSnack(context,"mailアドレスを認証してください。");
          //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("bb4")));
          // }

        } on FirebaseAuthException catch (e) {
          // print(e.code);
          print(e.message);
          print(jugdeLocate(context));  // ja
          errorHandleSnack(context,e.message.toString());
        }
    }

}
final SignProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignModel>(
  (ref) => SignUpNotifier(),
);