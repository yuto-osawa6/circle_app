

import 'package:circle_app/utils/method/firebaseAuthError/firebaseAuthErrorJa.dart';
import 'package:circle_app/utils/method/judgeLocate.dart';
import 'package:flutter/material.dart';

void FirebaseAuthError(String code, BuildContext context){
  // bool judgeLocate = jugdeLocate(context);
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  print(languageCode);
  print(languageCode == "en");
  print("aoijdioajioe");
  if(languageCode == "ja"){
    FirebaseAuthErrorJa(code,context);
  }else{
    FirebaseAuthErrorJa(code,context);
  }

}

void FirebaseAuthError2(String code, BuildContext context,String? lang){
  // bool judgeLocate = jugdeLocate(context);
  // try{
  //   Locale locale = Localizations.localeOf(context);
  //   // 言語コード取得
  //   String languageCode = locale.languageCode;
  //   print(languageCode);

  // }catch (e) {
  //   print(e);
    
  // }
  print("afeijfieoajfioeajfioaefjieoajfieojfioapppp");
  print(lang);
  // print(languageCode);
  print(lang == "en");
  print("aoijdioajioe");
  if(lang == "ja"){
    FirebaseAuthErrorJa2(code);
  }else{
    FirebaseAuthErrorJa2(code);
  }

}