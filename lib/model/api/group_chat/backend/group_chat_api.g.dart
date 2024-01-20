// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupChatApi _$$_GroupChatApiFromJson(Map<String, dynamic> json) =>
    _$_GroupChatApi(
      groups: Group.fromJson(json['groups'] as Map<String, dynamic>),
      group_chats:
          GroupChat.fromJson(json['group_chats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GroupChatApiToJson(_$_GroupChatApi instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'group_chats': instance.group_chats,
    };
