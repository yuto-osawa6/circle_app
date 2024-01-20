// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupCreate _$GroupCreateFromJson(Map<String, dynamic> json) {
  return _GroupCreate.fromJson(json);
}

/// @nodoc
mixin _$GroupCreate {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCreateCopyWith<GroupCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCreateCopyWith<$Res> {
  factory $GroupCreateCopyWith(
          GroupCreate value, $Res Function(GroupCreate) then) =
      _$GroupCreateCopyWithImpl<$Res, GroupCreate>;
  @useResult
  $Res call(
      {int? id, String name, int? level, List<Tag>? tags, String? description});
}

/// @nodoc
class _$GroupCreateCopyWithImpl<$Res, $Val extends GroupCreate>
    implements $GroupCreateCopyWith<$Res> {
  _$GroupCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? level = freezed,
    Object? tags = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupCreateCopyWith<$Res>
    implements $GroupCreateCopyWith<$Res> {
  factory _$$_GroupCreateCopyWith(
          _$_GroupCreate value, $Res Function(_$_GroupCreate) then) =
      __$$_GroupCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String name, int? level, List<Tag>? tags, String? description});
}

/// @nodoc
class __$$_GroupCreateCopyWithImpl<$Res>
    extends _$GroupCreateCopyWithImpl<$Res, _$_GroupCreate>
    implements _$$_GroupCreateCopyWith<$Res> {
  __$$_GroupCreateCopyWithImpl(
      _$_GroupCreate _value, $Res Function(_$_GroupCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? level = freezed,
    Object? tags = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GroupCreate(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupCreate with DiagnosticableTreeMixin implements _GroupCreate {
  const _$_GroupCreate(
      {this.id,
      required this.name,
      this.level,
      final List<Tag>? tags,
      this.description})
      : _tags = tags;

  factory _$_GroupCreate.fromJson(Map<String, dynamic> json) =>
      _$$_GroupCreateFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final int? level;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupCreate(id: $id, name: $name, level: $level, tags: $tags, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupCreate'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupCreate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, level,
      const DeepCollectionEquality().hash(_tags), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupCreateCopyWith<_$_GroupCreate> get copyWith =>
      __$$_GroupCreateCopyWithImpl<_$_GroupCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupCreateToJson(
      this,
    );
  }
}

abstract class _GroupCreate implements GroupCreate {
  const factory _GroupCreate(
      {final int? id,
      required final String name,
      final int? level,
      final List<Tag>? tags,
      final String? description}) = _$_GroupCreate;

  factory _GroupCreate.fromJson(Map<String, dynamic> json) =
      _$_GroupCreate.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  int? get level;
  @override
  List<Tag>? get tags;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCreateCopyWith<_$_GroupCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
