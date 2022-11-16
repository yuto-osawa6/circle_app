
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:flutter/material.dart';

void FirebaseAuthErrorJa(String code,BuildContext context) {
  switch (code) {
  case "email-already-in-use":
    errorHandleSnack(context,"このemailアドレスは既に登録されています。");
    break;
  case "weak-password":
    errorHandleSnack(context,"パスワードは6文字以上でご入力ください。");
    break;
  case "invalid-email":
    errorHandleSnack(context,"無効なメールアドレスです。");
    break;
// 条件に一致しない場合
  default:
    errorHandleSnack(context,"予期せぬエラーが発生しました。お問合せください。");
  }
}