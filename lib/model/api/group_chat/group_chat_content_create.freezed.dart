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
  int get groupId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  String? get s3ObjectKey => throw _privateConstructorUsedError;
  String? get textContent => throw _privateConstructorUsedError;

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
      {int groupId,
      int userId,
      String contentType,
      String? s3ObjectKey,
      String? textContent});
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
    Object? groupId = null,
    Object? userId = null,
    Object? contentType = null,
    Object? s3ObjectKey = freezed,
    Object? textContent = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      s3ObjectKey: freezed == s3ObjectKey
          ? _value.s3ObjectKey
          : s3ObjectKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textContent: freezed == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
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
      {int groupId,
      int userId,
      String contentType,
      String? s3ObjectKey,
      String? textContent});
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
    Object? groupId = null,
    Object? userId = null,
    Object? contentType = null,
    Object? s3ObjectKey = freezed,
    Object? textContent = freezed,
  }) {
    return _then(_$_GroupChatContentCreate(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      s3ObjectKey: freezed == s3ObjectKey
          ? _value.s3ObjectKey
          : s3ObjectKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textContent: freezed == textContent
          ? _value.textContent
          : textContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupChatContentCreate implements _GroupChatContentCreate {
  const _$_GroupChatContentCreate(
      {required this.groupId,
      required this.userId,
      required this.contentType,
      this.s3ObjectKey,
      this.textContent});

  factory _$_GroupChatContentCreate.fromJson(Map<String, dynamic> json) =>
      _$$_GroupChatContentCreateFromJson(json);

  @override
  final int groupId;
  @override
  final int userId;
  @override
  final String contentType;
  @override
  final String? s3ObjectKey;
  @override
  final String? textContent;

  @override
  String toString() {
    return 'GroupChatContentCreate(groupId: $groupId, userId: $userId, contentType: $contentType, s3ObjectKey: $s3ObjectKey, textContent: $textContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupChatContentCreate &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.s3ObjectKey, s3ObjectKey) ||
                other.s3ObjectKey == s3ObjectKey) &&
            (identical(other.textContent, textContent) ||
                other.textContent == textContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupId, userId, contentType, s3ObjectKey, textContent);

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
      {required final int groupId,
      required final int userId,
      required final String contentType,
      final String? s3ObjectKey,
      final String? textContent}) = _$_GroupChatContentCreate;

  factory _GroupChatContentCreate.fromJson(Map<String, dynamic> json) =
      _$_GroupChatContentCreate.fromJson;

  @override
  int get groupId;
  @override
  int get userId;
  @override
  String get contentType;
  @override
  String? get s3ObjectKey;
  @override
  String? get textContent;
  @override
  @JsonKey(ignore: true)
  _$$_GroupChatContentCreateCopyWith<_$_GroupChatContentCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
