import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'user.freezed.dart';
// part 'navigate.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    // required String email,
    String? email,
    // @Default("") String email,
    //  @Default(0) int page,
    // String? title,
    // String? description,
  }) = _UserModel;

  // factory NavigateActionModel.fromJson(Map<String, dynamic> json) => _$NavigateActionModelFromJson(json);
}