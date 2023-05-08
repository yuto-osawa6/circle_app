// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat_content_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChatContentCreate _$$_GroupChatContentCreateFromJson(
        Map<String, dynamic> json) =>
    _$_GroupChatContentCreate(
      groupId: json['groupId'] as int,
      userId: json['userId'] as int,
      contentType: json['contentType'] as String,
      s3ObjectKey: json['s3ObjectKey'] as String?,
      textContent: json['textContent'] as String?,
    );

Map<String, dynamic> _$$_GroupChatContentCreateToJson(
        _$_GroupChatContentCreate instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'userId': instance.userId,
      'contentType': instance.contentType,
      's3ObjectKey': instance.s3ObjectKey,
      'textContent': instance.textContent,
    };
