import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_chat_content_create.freezed.dart';
part 'group_chat_content_create.g.dart';

@freezed
class GroupChatContentCreate with _$GroupChatContentCreate {
  const factory GroupChatContentCreate({
    required int groupId,
    required int userId,
    required String contentType,
    String? s3ObjectKey,
    String? textContent,
  }) = _GroupChatContentCreate;

  factory GroupChatContentCreate.fromJson(Map<String, dynamic> json) =>
      _$GroupChatContentCreateFromJson(json);
}