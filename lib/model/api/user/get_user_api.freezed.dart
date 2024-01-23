// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUserApi _$GetUserApiFromJson(Map<String, dynamic> json) {
  return _GetUserApi.fromJson(json);
}

/// @nodoc
mixin _$GetUserApi {
// required String email,
// int? id,
// String? uid,
// String? email,
// String? token,
// List<Group>? groups
// @Default("") String email,
//  @Default(0) int page,
// String? title,
// String? description,
  UserModel? get user => throw _privateConstructorUsedError;
  List<GroupChat> get group_chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserApiCopyWith<GetUserApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserApiCopyWith<$Res> {
  factory $GetUserApiCopyWith(
          GetUserApi value, $Res Function(GetUserApi) then) =
      _$GetUserApiCopyWithImpl<$Res, GetUserApi>;
  @useResult
  $Res call({UserModel? user, List<GroupChat> group_chats});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$GetUserApiCopyWithImpl<$Res, $Val extends GetUserApi>
    implements $GetUserApiCopyWith<$Res> {
  _$GetUserApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? group_chats = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      group_chats: null == group_chats
          ? _value.group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetUserApiCopyWith<$Res>
    implements $GetUserApiCopyWith<$Res> {
  factory _$$_GetUserApiCopyWith(
          _$_GetUserApi value, $Res Function(_$_GetUserApi) then) =
      __$$_GetUserApiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user, List<GroupChat> group_chats});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_GetUserApiCopyWithImpl<$Res>
    extends _$GetUserApiCopyWithImpl<$Res, _$_GetUserApi>
    implements _$$_GetUserApiCopyWith<$Res> {
  __$$_GetUserApiCopyWithImpl(
      _$_GetUserApi _value, $Res Function(_$_GetUserApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? group_chats = null,
  }) {
    return _then(_$_GetUserApi(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      group_chats: null == group_chats
          ? _value._group_chats
          : group_chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetUserApi with DiagnosticableTreeMixin implements _GetUserApi {
  _$_GetUserApi({this.user, final List<GroupChat> group_chats = const []})
      : _group_chats = group_chats;

  factory _$_GetUserApi.fromJson(Map<String, dynamic> json) =>
      _$$_GetUserApiFromJson(json);

// required String email,
// int? id,
// String? uid,
// String? email,
// String? token,
// List<Group>? groups
// @Default("") String email,
//  @Default(0) int page,
// String? title,
// String? description,
  @override
  final UserModel? user;
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
    return 'GetUserApi(user: $user, group_chats: $group_chats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetUserApi'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('group_chats', group_chats));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserApi &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._group_chats, _group_chats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_group_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserApiCopyWith<_$_GetUserApi> get copyWith =>
      __$$_GetUserApiCopyWithImpl<_$_GetUserApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetUserApiToJson(
      this,
    );
  }
}

abstract class _GetUserApi implements GetUserApi {
  factory _GetUserApi(
      {final UserModel? user,
      final List<GroupChat> group_chats}) = _$_GetUserApi;

  factory _GetUserApi.fromJson(Map<String, dynamic> json) =
      _$_GetUserApi.fromJson;

  @override // required String email,
// int? id,
// String? uid,
// String? email,
// String? token,
// List<Group>? groups
// @Default("") String email,
//  @Default(0) int page,
// String? title,
// String? description,
  UserModel? get user;
  @override
  List<GroupChat> get group_chats;
  @override
  @JsonKey(ignore: true)
  _$$_GetUserApiCopyWith<_$_GetUserApi> get copyWith =>
      throw _privateConstructorUsedError;
}
