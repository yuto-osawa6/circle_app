// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserGroup _$$_UserGroupFromJson(Map<String, dynamic> json) => _$_UserGroup(
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      group_chats: (json['group_chats'] as List<dynamic>?)
              ?.map((e) => GroupChat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserGroupToJson(_$_UserGroup instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'group_chats': instance.group_chats,
    };
