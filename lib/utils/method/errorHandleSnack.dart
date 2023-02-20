
import 'package:circle_app/main.dart';
import 'package:circle_app/utils/method/error/errorJa.dart';
import 'package:flutter/material.dart';

void errorHandleSnack (BuildContext context, String text){
  print("ajdieoooooo88");
  print(text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
      print("ajdieoooooo88");
  }
void errorHandleSnack2 (String text){
    ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
    print("ajdieoooooo889");
    print(text);
    _scaffoldMessangerState.showSnackBar(SnackBar(content: Text(text)));
    print("ajdieoooooo889");
  }

  // void errorHandleSnack3 (int? code,String text, String? lang) {
  //   switch (lang) {
  //   case "ja":
  //     errorHandleSnack3messageJa(code);
  //     break;
  //   case "en":
  //     // messageHandleSnackEn2();
  //     if(code != null){
  //       errorHandleSnack2(text);
  //     }else{
  //       errorHandleSnack2("An unexpected error has occurred.Please contact us");
  //     }

  //     break;
  // // 条件に一致しない場合
  //   default:
  //     errorHandleSnack2("An unexpected error has occurred.Please contact us");
  //   }
  // } 

// ------------------
  

void messageHandleSnack (BuildContext context, String text){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  void messageHandleSnack2 (String? lang){
    print("gamereon");
    print(lang);
    print("gamereon");

    switch (lang) {
    case "ja":
      // errorHandleSnack(context,"このメールアドレスは既に登録されています。");
      messageHandleSnackJa2();
      break;
    case "en":
      // errorHandleSnack(context,"パスワードは6文字以上でご入力ください。");
      messageHandleSnackEn2();
      break;
  // 条件に一致しない場合
    default:
      errorHandleSnack2("予期せぬエラーが発生しました。お問合せください。");
    }
  }

void messageHandleSnackJa (BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ログインしました。")));
}

void messageHandleSnackJa2 (){
  ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  print("ajdieoooooo889j");
    // print(text);
    _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("ログインしました。")));
    print("ajdieoooooo889j");
}
void messageHandleSnackEn2 (){
  ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  print("ajdieoooooo889e");
    // print(text);
    _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("Successfully logged in")));
    print("ajdieoooooo889e");
  //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully logged in")));
}