// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupCreate _$$_GroupCreateFromJson(Map<String, dynamic> json) =>
    _$_GroupCreate(
      id: json['id'] as int?,
      name: json['name'] as String,
      level: json['level'] as int?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_GroupCreateToJson(_$_GroupCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'tags': instance.tags,
      'description': instance.description,
    };
