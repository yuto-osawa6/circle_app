

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'sign_model.freezed.dart';
// part 'navigate.g.dart';

@freezed
class SignModel with _$SignModel {
  factory SignModel({
    @Default("") String newUserEmail,
    @Default("") String newUserPassword,
    @Default("") String loginUserEmail,
    @Default("") String loginUserPassword,
    @Default("") String infoText,
    @Default(false) bool openEye
  }) = _SignModel;

}