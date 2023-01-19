
import 'package:circle_app/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void apiError (String? obj,BuildContext context){
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  print(languageCode);
  print(languageCode == "en");
  switch (languageCode) {
    case "ja":
      // Here's the sample to get the failed response error code and message
      // final res = (obj as DioError).response;
      // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
      apiErrorJa(obj);
      break;
    case "en":
      apiErrorEn(obj);
      break;
    default:
      break;
  }
}

// api 多言語error
void apiErrorJa(String? obj) {
  ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  print("---start api error");
  // _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("ログインしました。")));
  switch (obj) {
      case  null:
        // Here's the sample to get the failed response error code and message
        // final res = (obj as DioError).response;
        // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
        _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("通信エラーが発生しました。")));
        break;
      default:
        break;
    }
  print("---end api error");
}

void apiErrorEn(String? obj) {
  ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  print("---start api error");
  // _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("ログインしました。")));
  switch (obj) {
      case null:
        // Here's the sample to get the failed response error code and message
        // final res = (obj as DioError).response;
        // logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
        _scaffoldMessangerState.showSnackBar(SnackBar(content: Text("Error:connect with internet")));
        break;
      default:
        break;
    }
  print("---end api error");
}