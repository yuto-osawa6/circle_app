import 'package:circle_app/model/api/group_chat/group_chat_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_chat.freezed.dart';
part 'group_chat.g.dart';

@freezed
class GroupChat with _$GroupChat {
  const factory GroupChat({
    int? id,
    int? group_id,
    int? user_id,
    GroupChatContent? content
  }) = _GroupChat;

  factory GroupChat.fromJson(Map<String, dynamic> json) =>
      _$GroupChatFromJson(json);
}