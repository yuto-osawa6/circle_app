// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_chat_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupChatApi _$GroupChatApiFromJson(Map<String, dynamic> json) {
  return _GroupChatApi.fromJson(json);
}

/// @nodoc
mixin _$GroupChatApi {
  Group get groups => throw _privateConstructorUsedError;
  GroupChat get group_chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChatApiCopyWith<GroupChatApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatApiCopyWith<$Res> {
  factory $GroupChatApiCopyWith(
          GroupChatApi value, $Res Function(GroupChatApi) then) =
      _$GroupChatApiCopyWithImpl<$Res, GroupChatApi>;
  @useResult
  $Res call({Group groups, GroupChat group_chats});

  $GroupCopyWith<$Res> get groups;
  $GroupChatCopyWith<$Res> get group_chats;
}

/// @nodoc
class _$GroupChatApiCopyWithImpl<$Res, $Val extends GroupChatApi>
    implements $GroupChatApiCopyWith<$Res> {
  _$GroupChatApiCopyWithImpl(this._value, this._then);

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
              as Group,
      group_chats: null == group_chats
          ? _value.group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as GroupChat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get groups {
    return $GroupCopyWith<$Res>(_value.groups, (value) {
      return _then(_value.copyWith(groups: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupChatCopyWith<$Res> get group_chats {
    return $GroupChatCopyWith<$Res>(_value.group_chats, (value) {
      return _then(_value.copyWith(group_chats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupChatApiCopyWith<$Res>
    implements $GroupChatApiCopyWith<$Res> {
  factory _$$_GroupChatApiCopyWith(
          _$_GroupChatApi value, $Res Function(_$_GroupChatApi) then) =
      __$$_GroupChatApiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Group groups, GroupChat group_chats});

  @override
  $GroupCopyWith<$Res> get groups;
  @override
  $GroupChatCopyWith<$Res> get group_chats;
}

/// @nodoc
class __$$_GroupChatApiCopyWithImpl<$Res>
    extends _$GroupChatApiCopyWithImpl<$Res, _$_GroupChatApi>
    implements _$$_GroupChatApiCopyWith<$Res> {
  __$$_GroupChatApiCopyWithImpl(
      _$_GroupChatApi _value, $Res Function(_$_GroupChatApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
    Object? group_chats = null,
  }) {
    return _then(_$_GroupChatApi(
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Group,
      group_chats: null == group_chats
          ? _value.group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as GroupChat,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupChatApi implements _GroupChatApi {
  const _$_GroupChatApi({required this.groups, required this.group_chats});

  factory _$_GroupChatApi.fromJson(Map<String, dynamic> json) =>
      _$$_GroupChatApiFromJson(json);

  @override
  final Group groups;
  @override
  final GroupChat group_chats;

  @override
  String toString() {
    return 'GroupChatApi(groups: $groups, group_chats: $group_chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupChatApi &&
            (identical(other.groups, groups) || other.groups == groups) &&
            (identical(other.group_chats, group_chats) ||
                other.group_chats == group_chats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groups, group_chats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupChatApiCopyWith<_$_GroupChatApi> get copyWith =>
      __$$_GroupChatApiCopyWithImpl<_$_GroupChatApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupChatApiToJson(
      this,
    );
  }
}

abstract class _GroupChatApi implements GroupChatApi {
  const factory _GroupChatApi(
      {required final Group groups,
      required final GroupChat group_chats}) = _$_GroupChatApi;

  factory _GroupChatApi.fromJson(Map<String, dynamic> json) =
      _$_GroupChatApi.fromJson;

  @override
  Group get groups;
  @override
  GroupChat get group_chats;
  @override
  @JsonKey(ignore: true)
  _$$_GroupChatApiCopyWith<_$_GroupChatApi> get copyWith =>
      throw _privateConstructorUsedError;
}
