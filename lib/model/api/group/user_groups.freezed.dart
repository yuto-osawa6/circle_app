// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) {
  return _UserGroup.fromJson(json);
}

/// @nodoc
mixin _$UserGroup {
// int? id,
// required String name,
// int? level,
  List<Group> get groups => throw _privateConstructorUsedError;
  List<GroupChat> get group_chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGroupCopyWith<UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupCopyWith<$Res> {
  factory $UserGroupCopyWith(UserGroup value, $Res Function(UserGroup) then) =
      _$UserGroupCopyWithImpl<$Res, UserGroup>;
  @useResult
  $Res call({List<Group> groups, List<GroupChat> group_chats});
}

/// @nodoc
class _$UserGroupCopyWithImpl<$Res, $Val extends UserGroup>
    implements $UserGroupCopyWith<$Res> {
  _$UserGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? group_chats = null,
  }) {
    return _then(_value.copyWith(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      group_chats: null == group_chats
          ? _value.group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserGroupCopyWith<$Res> implements $UserGroupCopyWith<$Res> {
  factory _$$_UserGroupCopyWith(
          _$_UserGroup value, $Res Function(_$_UserGroup) then) =
      __$$_UserGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Group> groups, List<GroupChat> group_chats});
}

/// @nodoc
class __$$_UserGroupCopyWithImpl<$Res>
    extends _$UserGroupCopyWithImpl<$Res, _$_UserGroup>
    implements _$$_UserGroupCopyWith<$Res> {
  __$$_UserGroupCopyWithImpl(
      _$_UserGroup _value, $Res Function(_$_UserGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? group_chats = null,
  }) {
    return _then(_$_UserGroup(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      group_chats: null == group_chats
          ? _value._group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGroup with DiagnosticableTreeMixin implements _UserGroup {
  const _$_UserGroup(
      {final List<Group> groups = const [],
      final List<GroupChat> group_chats = const []})
      : _groups = groups,
        _group_chats = group_chats;

  factory _$_UserGroup.fromJson(Map<String, dynamic> json) =>
      _$$_UserGroupFromJson(json);

// int? id,
// required String name,
// int? level,
  final List<Group> _groups;
// int? id,
// required String name,
// int? level,
  @override
  @JsonKey()
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<GroupChat> _group_chats;
  @override
  @JsonKey()
  List<GroupChat> get group_chats {
    if (_group_chats is EqualUnmodifiableListView) return _group_chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_group_chats);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserGroup(groups: $groups, group_chats: $group_chats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserGroup'))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('group_chats', group_chats));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGroup &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._group_chats, _group_chats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_group_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserGroupCopyWith<_$_UserGroup> get copyWith =>
      __$$_UserGroupCopyWithImpl<_$_UserGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGroupToJson(
      this,
    );
  }
}

abstract class _UserGroup implements UserGroup {
  const factory _UserGroup(
      {final List<Group> groups,
      final List<GroupChat> group_chats}) = _$_UserGroup;

  factory _UserGroup.fromJson(Map<String, dynamic> json) =
      _$_UserGroup.fromJson;

  @override // int? id,
// required String name,
// int? level,
  List<Group> get groups;
  @override
  List<GroupChat> get group_chats;
  @override
  @JsonKey(ignore: true)
  _$$_UserGroupCopyWith<_$_UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
