// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetUserApi _$$_GetUserApiFromJson(Map<String, dynamic> json) =>
    _$_GetUserApi(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      group_chats: (json['group_chats'] as List<dynamic>?)
              ?.map((e) => GroupChat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GetUserApiToJson(_$_GetUserApi instance) =>
    <String, dynamic>{
      'user': instance.user,
      'group_chats': instance.group_chats,
    };
