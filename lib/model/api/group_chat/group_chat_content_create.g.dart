// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat_content_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChatContentCreate _$$_GroupChatContentCreateFromJson(
        Map<String, dynamic> json) =>
    _$_GroupChatContentCreate(
      group_id: json['group_id'] as int,
      user_id: json['user_id'] as int,
      content_type: json['content_type'] as String,
      s3_object_key: json['s3_object_key'] as String?,
      text_content: json['text_content'] as String?,
    );

Map<String, dynamic> _$$_GroupChatContentCreateToJson(
        _$_GroupChatContentCreate instance) =>
    <String, dynamic>{
      'group_id': instance.group_id,
      'user_id': instance.user_id,
      'content_type': instance.content_type,
      's3_object_key': instance.s3_object_key,
      'text_content': instance.text_content,
    };
