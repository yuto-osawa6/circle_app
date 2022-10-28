
import 'package:flutter/material.dart';

bool jugdeLocate (BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  // 言語コード取得
  String languageCode = locale.languageCode;
  bool jugdeLanguageCode = locale.languageCode == "ja";
  // print(languageCode);  // ja
  return jugdeLanguageCode;
}