import 'package:circle_app/model/api/group/group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';

part 'group_chat_api.freezed.dart';
part 'group_chat_api.g.dart';

@freezed
class GroupChatApi with _$GroupChatApi {
  const factory GroupChatApi({
    required Group groups,
    required GroupChat group_chats,
  }) = _GroupChatApi;

  factory GroupChatApi.fromJson(Map<String, dynamic> json) =>
      _$GroupChatApiFromJson(json);
}