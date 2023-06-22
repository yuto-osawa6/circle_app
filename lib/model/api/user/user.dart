import 'package:circle_app/model/api/group/group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    // required String email,
    int? id,
    String? email,
    String? token,
    List<Group>? groups
    // @Default("") String email,
    //  @Default(0) int page,
    // String? title,
    // String? description,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}