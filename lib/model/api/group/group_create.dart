import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'group_create.freezed.dart';
part 'group_create.g.dart';

@freezed
abstract class GroupCreate with _$GroupCreate {
  const factory GroupCreate({
    int? id,
    required String name,
    int? level,
    // List<String> members,
  }) = _GroupCreate;

  factory GroupCreate.fromJson(Map<String, dynamic> json) => _$GroupCreateFromJson(json);
  // toJsonメソッドを追加
  // @override // ここに @override アノテーションを追加
  // Map<String, dynamic> toJson() => _$GroupCreateToJson(this);
}
