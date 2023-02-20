import 'package:circle_app/model/state/lang.dart';
import 'package:circle_app/model/state/navigate.dart';
import 'package:circle_app/repository/user_create.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'package:circle_app/model/api/result.dart';
// import 'package:yochan/model/task_model.dart';

// import 'package:yochan/repository/task_repo.dart';

class LangNotifier extends StateNotifier<LangModel> {
  // 初期値の指定
  LangNotifier() : super(LangModel());
  void setCurrentLang(String? lang) async {
    state = state.copyWith(lang: lang);
  }

}

final LangProvider =
    StateNotifierProvider.autoDispose<LangNotifier, LangModel>(
  (ref) => LangNotifier(),
);
