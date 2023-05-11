// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChatContent _$$_GroupChatContentFromJson(Map<String, dynamic> json) =>
    _$_GroupChatContent(
      id: json['id'] as int?,
      group_chat_id: json['group_chat_id'] as int?,
      content_type: json['content_type'] as String?,
      s3_object_key: json['s3_object_key'] as String?,
      text_content: json['text_content'] as String?,
    );

Map<String, dynamic> _$$_GroupChatContentToJson(_$_GroupChatContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_chat_id': instance.group_chat_id,
      'content_type': instance.content_type,
      's3_object_key': instance.s3_object_key,
      'text_content': instance.text_content,
    };
