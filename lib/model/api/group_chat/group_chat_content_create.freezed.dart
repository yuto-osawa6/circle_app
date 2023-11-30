// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_chat_content_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupChatContentCreate _$GroupChatContentCreateFromJson(
    Map<String, dynamic> json) {
  return _GroupChatContentCreate.fromJson(json);
}

/// @nodoc
mixin _$GroupChatContentCreate {
  int get group_id => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  String get content_type => throw _privateConstructorUsedError;
  String? get s3_object_key => throw _privateConstructorUsedError;
  String? get text_content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChatContentCreateCopyWith<GroupChatContentCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatContentCreateCopyWith<$Res> {
  factory $GroupChatContentCreateCopyWith(GroupChatContentCreate value,
          $Res Function(GroupChatContentCreate) then) =
      _$GroupChatContentCreateCopyWithImpl<$Res, GroupChatContentCreate>;
  @useResult
  $Res call(
      {int group_id,
      int user_id,
      String content_type,
      String? s3_object_key,
      String? text_content});
}

/// @nodoc
class _$GroupChatContentCreateCopyWithImpl<$Res,
        $Val extends GroupChatContentCreate>
    implements $GroupChatContentCreateCopyWith<$Res> {
  _$GroupChatContentCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? user_id = null,
    Object? content_type = null,
    Object? s3_object_key = freezed,
    Object? text_content = freezed,
  }) {
    return _then(_value.copyWith(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      content_type: null == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String,
      s3_object_key: freezed == s3_object_key
          ? _value.s3_object_key
          : s3_object_key // ignore: cast_nullable_to_non_nullable
              as String?,
      text_content: freezed == text_content
          ? _value.text_content
          : text_content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupChatContentCreateCopyWith<$Res>
    implements $GroupChatContentCreateCopyWith<$Res> {
  factory _$$_GroupChatContentCreateCopyWith(_$_GroupChatContentCreate value,
          $Res Function(_$_GroupChatContentCreate) then) =
      __$$_GroupChatContentCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int group_id,
      int user_id,
      String content_type,
      String? s3_object_key,
      String? text_content});
}

/// @nodoc
class __$$_GroupChatContentCreateCopyWithImpl<$Res>
    extends _$GroupChatContentCreateCopyWithImpl<$Res,
        _$_GroupChatContentCreate>
    implements _$$_GroupChatContentCreateCopyWith<$Res> {
  __$$_GroupChatContentCreateCopyWithImpl(_$_GroupChatContentCreate _value,
      $Res Function(_$_GroupChatContentCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_id = null,
    Object? user_id = null,
    Object? content_type = null,
    Object? s3_object_key = freezed,
    Object? text_content = freezed,
  }) {
    return _then(_$_GroupChatContentCreate(
      group_id: null == group_id
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      content_type: null == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String,
      s3_object_key: freezed == s3_object_key
          ? _value.s3_object_key
          : s3_object_key // ignore: cast_nullable_to_non_nullable
              as String?,
      text_content: freezed == text_content
          ? _value.text_content
          : text_content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupChatContentCreate implements _GroupChatContentCreate {
  const _$_GroupChatContentCreate(
      {required this.group_id,
      required this.user_id,
      required this.content_type,
      this.s3_object_key,
      this.text_content});

  factory _$_GroupChatContentCreate.fromJson(Map<String, dynamic> json) =>
      _$$_GroupChatContentCreateFromJson(json);

  @override
  final int group_id;
  @override
  final int user_id;
  @override
  final String content_type;
  @override
  final String? s3_object_key;
  @override
  final String? text_content;

  @override
  String toString() {
    return 'GroupChatContentCreate(group_id: $group_id, user_id: $user_id, content_type: $content_type, s3_object_key: $s3_object_key, text_content: $text_content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupChatContentCreate &&
            (identical(other.group_id, group_id) ||
                other.group_id == group_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.s3_object_key, s3_object_key) ||
                other.s3_object_key == s3_object_key) &&
            (identical(other.text_content, text_content) ||
                other.text_content == text_content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group_id, user_id, content_type,
      s3_object_key, text_content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupChatContentCreateCopyWith<_$_GroupChatContentCreate> get copyWith =>
      __$$_GroupChatContentCreateCopyWithImpl<_$_GroupChatContentCreate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupChatContentCreateToJson(
      this,
    );
  }
}

abstract class _GroupChatContentCreate implements GroupChatContentCreate {
  const factory _GroupChatContentCreate(
      {required final int group_id,
      required final int user_id,
      required final String content_type,
      final String? s3_object_key,
      final String? text_content}) = _$_GroupChatContentCreate;

  factory _GroupChatContentCreate.fromJson(Map<String, dynamic> json) =
      _$_GroupChatContentCreate.fromJson;

  @override
  int get group_id;
  @override
  int get user_id;
  @override
  String get content_type;
  @override
  String? get s3_object_key;
  @override
  String? get text_content;
  @override
  @JsonKey(ignore: true)
  _$$_GroupChatContentCreateCopyWith<_$_GroupChatContentCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
