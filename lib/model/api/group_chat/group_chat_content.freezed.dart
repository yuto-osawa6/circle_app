// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_chat_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupChatContent _$GroupChatContentFromJson(Map<String, dynamic> json) {
  return _GroupChatContent.fromJson(json);
}

/// @nodoc
mixin _$GroupChatContent {
  int? get id => throw _privateConstructorUsedError;
  int? get group_chat_id => throw _privateConstructorUsedError;
  String? get content_type => throw _privateConstructorUsedError;
  String? get s3_object_key => throw _privateConstructorUsedError;
  String? get text_content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChatContentCopyWith<GroupChatContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatContentCopyWith<$Res> {
  factory $GroupChatContentCopyWith(
          GroupChatContent value, $Res Function(GroupChatContent) then) =
      _$GroupChatContentCopyWithImpl<$Res, GroupChatContent>;
  @useResult
  $Res call(
      {int? id,
      int? group_chat_id,
      String? content_type,
      String? s3_object_key,
      String? text_content});
}

/// @nodoc
class _$GroupChatContentCopyWithImpl<$Res, $Val extends GroupChatContent>
    implements $GroupChatContentCopyWith<$Res> {
  _$GroupChatContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group_chat_id = freezed,
    Object? content_type = freezed,
    Object? s3_object_key = freezed,
    Object? text_content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_chat_id: freezed == group_chat_id
          ? _value.group_chat_id
          : group_chat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_GroupChatContentCopyWith<$Res>
    implements $GroupChatContentCopyWith<$Res> {
  factory _$$_GroupChatContentCopyWith(
          _$_GroupChatContent value, $Res Function(_$_GroupChatContent) then) =
      __$$_GroupChatContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? group_chat_id,
      String? content_type,
      String? s3_object_key,
      String? text_content});
}

/// @nodoc
class __$$_GroupChatContentCopyWithImpl<$Res>
    extends _$GroupChatContentCopyWithImpl<$Res, _$_GroupChatContent>
    implements _$$_GroupChatContentCopyWith<$Res> {
  __$$_GroupChatContentCopyWithImpl(
      _$_GroupChatContent _value, $Res Function(_$_GroupChatContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group_chat_id = freezed,
    Object? content_type = freezed,
    Object? s3_object_key = freezed,
    Object? text_content = freezed,
  }) {
    return _then(_$_GroupChatContent(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_chat_id: freezed == group_chat_id
          ? _value.group_chat_id
          : group_chat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_GroupChatContent implements _GroupChatContent {
  const _$_GroupChatContent(
      {this.id,
      this.group_chat_id,
      this.content_type,
      this.s3_object_key,
      this.text_content});

  factory _$_GroupChatContent.fromJson(Map<String, dynamic> json) =>
      _$$_GroupChatContentFromJson(json);

  @override
  final int? id;
  @override
  final int? group_chat_id;
  @override
  final String? content_type;
  @override
  final String? s3_object_key;
  @override
  final String? text_content;

  @override
  String toString() {
    return 'GroupChatContent(id: $id, group_chat_id: $group_chat_id, content_type: $content_type, s3_object_key: $s3_object_key, text_content: $text_content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupChatContent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group_chat_id, group_chat_id) ||
                other.group_chat_id == group_chat_id) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.s3_object_key, s3_object_key) ||
                other.s3_object_key == s3_object_key) &&
            (identical(other.text_content, text_content) ||
                other.text_content == text_content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, group_chat_id, content_type,
      s3_object_key, text_content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupChatContentCopyWith<_$_GroupChatContent> get copyWith =>
      __$$_GroupChatContentCopyWithImpl<_$_GroupChatContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupChatContentToJson(
      this,
    );
  }
}

abstract class _GroupChatContent implements GroupChatContent {
  const factory _GroupChatContent(
      {final int? id,
      final int? group_chat_id,
      final String? content_type,
      final String? s3_object_key,
      final String? text_content}) = _$_GroupChatContent;

  factory _GroupChatContent.fromJson(Map<String, dynamic> json) =
      _$_GroupChatContent.fromJson;

  @override
  int? get id;
  @override
  int? get group_chat_id;
  @override
  String? get content_type;
  @override
  String? get s3_object_key;
  @override
  String? get text_content;
  @override
  @JsonKey(ignore: true)
  _$$_GroupChatContentCopyWith<_$_GroupChatContent> get copyWith =>
      throw _privateConstructorUsedError;
}
