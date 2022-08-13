import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'navigate.freezed.dart';
// part 'navigate.g.dart';

@freezed
class NavigateActionModel with _$NavigateActionModel {
  factory NavigateActionModel({
     @Default(0) int page,
    // String? title,
    // String? description,
  }) = _NavigateActionModel;

  // factory NavigateActionModel.fromJson(Map<String, dynamic> json) => _$NavigateActionModelFromJson(json);
}