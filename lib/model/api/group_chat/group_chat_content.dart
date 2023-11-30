
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_chat_content.freezed.dart';
part 'group_chat_content.g.dart';

@freezed
class GroupChatContent with _$GroupChatContent {
  const factory GroupChatContent({
    int? id,
    int? group_chat_id,
    String? content_type,
    String? s3_object_key,
    String? text_content,
  }) = _GroupChatContent;

  factory GroupChatContent.fromJson(Map<String, dynamic> json) =>
      _$GroupChatContentFromJson(json);
}