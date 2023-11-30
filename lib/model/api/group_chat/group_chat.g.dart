// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChat _$$_GroupChatFromJson(Map<String, dynamic> json) => _$_GroupChat(
      id: json['id'] as int?,
      group_id: json['group_id'] as int?,
      user_id: json['user_id'] as int?,
      content: json['content'] == null
          ? null
          : GroupChatContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GroupChatToJson(_$_GroupChat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.group_id,
      'user_id': instance.user_id,
      'content': instance.content,
    };
