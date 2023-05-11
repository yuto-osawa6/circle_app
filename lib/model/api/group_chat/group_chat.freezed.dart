// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupChat _$GroupChatFromJson(Map<String, dynamic> json) {
  return _GroupChat.fromJson(json);
}

/// @nodoc
mixin _$GroupChat {
  int? get id => throw _privateConstructorUsedError;
  int? get group_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  GroupChatContent? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChatCopyWith<GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatCopyWith<$Res> {
  factory $GroupChatCopyWith(GroupChat value, $Res Function(GroupChat) then) =
      _$GroupChatCopyWithImpl<$Res, GroupChat>;
  @useResult
  $Res call({int? id, int? group_id, int? user_id, GroupChatContent? content});

  $GroupChatContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$GroupChatCopyWithImpl<$Res, $Val extends GroupChat>
    implements $GroupChatCopyWith<$Res> {
  _$GroupChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group_id = freezed,
    Object? user_id = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as GroupChatContent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupChatContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $GroupChatContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupChatCopyWith<$Res> implements $GroupChatCopyWith<$Res> {
  factory _$$_GroupChatCopyWith(
          _$_GroupChat value, $Res Function(_$_GroupChat) then) =
      __$$_GroupChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? group_id, int? user_id, GroupChatContent? content});

  @override
  $GroupChatContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$_GroupChatCopyWithImpl<$Res>
    extends _$GroupChatCopyWithImpl<$Res, _$_GroupChat>
    implements _$$_GroupChatCopyWith<$Res> {
  __$$_GroupChatCopyWithImpl(
      _$_GroupChat _value, $Res Function(_$_GroupChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group_id = freezed,
    Object? user_id = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_GroupChat(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_id: freezed == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as GroupChatContent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupChat implements _GroupChat {
  const _$_GroupChat({this.id, this.group_id, this.user_id, this.content});

  factory _$_GroupChat.fromJson(Map<String, dynamic> json) =>
      _$$_GroupChatFromJson(json);

  @override
  final int? id;
  @override
  final int? group_id;
  @override
  final int? user_id;
  @override
  final GroupChatContent? content;

  @override
  String toString() {
    return 'GroupChat(id: $id, group_id: $group_id, user_id: $user_id, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, group_id, user_id, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupChatCopyWith<_$_GroupChat> get copyWith =>
      __$$_GroupChatCopyWithImpl<_$_GroupChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupChatToJson(
      this,
    );
  }
}

abstract class _GroupChat implements GroupChat {
  const factory _GroupChat(
      {final int? id,
      final int? group_id,
      final int? user_id,
      final GroupChatContent? content}) = _$_GroupChat;

  factory _GroupChat.fromJson(Map<String, dynamic> json) =
      _$_GroupChat.fromJson;

  @override
  int? get id;
  @override
  int? get group_id;
  @override
  int? get user_id;
  @override
  GroupChatContent? get content;
  @override
  @JsonKey(ignore: true)
  _$$_GroupChatCopyWith<_$_GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}
