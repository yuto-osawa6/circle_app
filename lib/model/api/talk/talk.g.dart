// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Talk _$$_TalkFromJson(Map<String, dynamic> json) => _$_Talk(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      group_chats: (json['group_chats'] as List<dynamic>?)
          ?.map((e) => GroupChat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TalkToJson(_$_Talk instance) => <String, dynamic>{
      'groups': instance.groups,
      'group_chats': instance.group_chats,
    };
