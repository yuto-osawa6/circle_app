import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_chat_content_create.freezed.dart';
part 'group_chat_content_create.g.dart';

@freezed
class GroupChatContentCreate with _$GroupChatContentCreate {
  const factory GroupChatContentCreate({
    required int group_id,
    required int user_id,
    required String content_type,
    String? s3_object_key,
    String? text_content,
  }) = _GroupChatContentCreate;

  factory GroupChatContentCreate.fromJson(Map<String, dynamic> json) =>
      _$GroupChatContentCreateFromJson(json);
}