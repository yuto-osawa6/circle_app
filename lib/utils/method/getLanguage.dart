

import 'dart:ffi';

import 'package:flutter/material.dart';

String getLanguage (BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  // print(languageCode);  // ja
  return languageCode;
}

String getJugdeLanguage (BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  // String fontF = 
  // print(languageCode);  // ja
  switch (languageCode) {
  case "en":
    // String fontF = "Roboto";
    String fontF = "NotoSansJP";

    return fontF;
  case "jp":
    String fontF = "NotoSansJP";
    return fontF;
// 条件に一致しない場合
  default:
    String fontF = "Roboto";
    return fontF;
  }
  // return "";
}