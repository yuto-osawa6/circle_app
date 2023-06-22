import 'package:circle_app/model/api/group/group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'related_user.freezed.dart';
part 'related_user.g.dart';

@freezed
class RelatedUserModel with _$RelatedUserModel {
  factory RelatedUserModel({
    required int id,
    required String email,
  }) = _RelatedUserModel;

  factory RelatedUserModel.fromJson(Map<String, dynamic> json) => _$RelatedUserModelFromJson(json);
}