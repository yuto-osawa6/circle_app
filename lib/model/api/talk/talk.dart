import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'talk.freezed.dart';
part 'talk.g.dart';

@freezed
abstract class Talk with _$Talk {
  const factory Talk({
    List<Group>? groups,
    List<GroupChat>? group_chats
  }) = _Talk;

  factory Talk.fromJson(Map<String, dynamic> json) => _$TalkFromJson(json);

  // Add toJson method if needed
  // Map<String, dynamic> toJson() => _$TagToJson(this);
}