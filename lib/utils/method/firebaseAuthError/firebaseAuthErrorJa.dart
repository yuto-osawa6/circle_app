
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:flutter/material.dart';

void FirebaseAuthErrorJa(String code,BuildContext context) {
  print("ajdieoooooo");
  switch (code) {
  case "email-already-in-use":
    errorHandleSnack(context,"このメールアドレスは既に登録されています。");
    break;
  case "weak-password":
    errorHandleSnack(context,"パスワードは6文字以上でご入力ください。");
    break;
  case "invalid-email":
    errorHandleSnack(context,"無効なメールアドレスです。");
    break;
  case "unknown":
    errorHandleSnack(context,"メールアドレスを入力してください。");
    break;
  case "too-many-requests":
    errorHandleSnack(context,"連続でリクエストが送信されため、このデバイスからのすべてのリクエストをブロックしました。後に、もう一度試してください。");
    break;
// 条件に一致しない場合
  default:
    print("ajdieoooooo8");
    errorHandleSnack(context,"予期せぬエラーが発生しました。お問合せください。");
  }
}

void FirebaseAuthErrorJa2(String code) {
  print("ajdieoooooo");
  switch (code) {
  case "email-already-in-use":
    errorHandleSnack2("このメールアドレスは既に登録されています。");
    break;
  case "weak-password":
    errorHandleSnack2("パスワードは6文字以上でご入力ください。");
    break;
  case "invalid-email":
    errorHandleSnack2("無効なメールアドレスです。");
    break;
  case "unknown":
    errorHandleSnack2("メールアドレスを入力してください。");
    break;
  case "too-many-requests":
    errorHandleSnack2("連続でリクエストが送信されため、このデバイスからのすべてのリクエストをブロックしました。数分後、もう一度試してみてください。");
    break;
  // 追加
  case "invalid-action-code":
    errorHandleSnack2("認証コードが無効です。有効期限が切れている、または既に使用されています。");
    break;
// 条件に一致しない場合
  default:
    print("ajdieoooooo8");
    errorHandleSnack2("予期せぬエラーが発生しました。お問合せください。");
  }
}