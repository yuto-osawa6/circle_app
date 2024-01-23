// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Talk _$TalkFromJson(Map<String, dynamic> json) {
  return _Talk.fromJson(json);
}

/// @nodoc
mixin _$Talk {
  List<Group>? get groups => throw _privateConstructorUsedError;
  List<GroupChat>? get group_chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TalkCopyWith<Talk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkCopyWith<$Res> {
  factory $TalkCopyWith(Talk value, $Res Function(Talk) then) =
      _$TalkCopyWithImpl<$Res, Talk>;
  @useResult
  $Res call({List<Group>? groups, List<GroupChat>? group_chats});
}

/// @nodoc
class _$TalkCopyWithImpl<$Res, $Val extends Talk>
    implements $TalkCopyWith<$Res> {
  _$TalkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
    Object? group_chats = freezed,
  }) {
    return _then(_value.copyWith(
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      group_chats: freezed == group_chats
          ? _value.group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TalkCopyWith<$Res> implements $TalkCopyWith<$Res> {
  factory _$$_TalkCopyWith(_$_Talk value, $Res Function(_$_Talk) then) =
      __$$_TalkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Group>? groups, List<GroupChat>? group_chats});
}

/// @nodoc
class __$$_TalkCopyWithImpl<$Res> extends _$TalkCopyWithImpl<$Res, _$_Talk>
    implements _$$_TalkCopyWith<$Res> {
  __$$_TalkCopyWithImpl(_$_Talk _value, $Res Function(_$_Talk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
    Object? group_chats = freezed,
  }) {
    return _then(_$_Talk(
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      group_chats: freezed == group_chats
          ? _value._group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Talk with DiagnosticableTreeMixin implements _Talk {
  const _$_Talk({final List<Group>? groups, final List<GroupChat>? group_chats})
      : _groups = groups,
        _group_chats = group_chats;

  factory _$_Talk.fromJson(Map<String, dynamic> json) => _$$_TalkFromJson(json);

  final List<Group>? _groups;
  @override
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GroupChat>? _group_chats;
  @override
  List<GroupChat>? get group_chats {
    final value = _group_chats;
    if (value == null) return null;
    if (_group_chats is EqualUnmodifiableListView) return _group_chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Talk(groups: $groups, group_chats: $group_chats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Talk'))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('group_chats', group_chats));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Talk &&
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
  _$$_TalkCopyWith<_$_Talk> get copyWith =>
      __$$_TalkCopyWithImpl<_$_Talk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TalkToJson(
      this,
    );
  }
}

abstract class _Talk implements Talk {
  const factory _Talk(
      {final List<Group>? groups,
      final List<GroupChat>? group_chats}) = _$_Talk;

  factory _Talk.fromJson(Map<String, dynamic> json) = _$_Talk.fromJson;

  @override
  List<Group>? get groups;
  @override
  List<GroupChat>? get group_chats;
  @override
  @JsonKey(ignore: true)
  _$$_TalkCopyWith<_$_Talk> get copyWith => throw _privateConstructorUsedError;
}
