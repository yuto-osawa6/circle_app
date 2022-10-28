

import 'package:flutter/material.dart';

String getLanguage (BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  // print(languageCode);  // ja
  return languageCode;
}