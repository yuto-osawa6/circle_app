import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_groups.freezed.dart';
part 'user_groups.g.dart';

@freezed
abstract class UserGroup with _$UserGroup {
  const factory UserGroup({
    // int? id,
    // required String name,
    // int? level,
    @Default([]) List<Group> groups,
    @Default([]) List<GroupChat> group_chats,
    // List<String> members,
  }) = _UserGroup;

  factory UserGroup.fromJson(Map<String, dynamic> json) => _$UserGroupFromJson(json);
}
