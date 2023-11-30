// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelatedUserModel _$RelatedUserModelFromJson(Map<String, dynamic> json) {
  return _RelatedUserModel.fromJson(json);
}

/// @nodoc
mixin _$RelatedUserModel {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedUserModelCopyWith<RelatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedUserModelCopyWith<$Res> {
  factory $RelatedUserModelCopyWith(
          RelatedUserModel value, $Res Function(RelatedUserModel) then) =
      _$RelatedUserModelCopyWithImpl<$Res, RelatedUserModel>;
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class _$RelatedUserModelCopyWithImpl<$Res, $Val extends RelatedUserModel>
    implements $RelatedUserModelCopyWith<$Res> {
  _$RelatedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedUserModelCopyWith<$Res>
    implements $RelatedUserModelCopyWith<$Res> {
  factory _$$_RelatedUserModelCopyWith(
          _$_RelatedUserModel value, $Res Function(_$_RelatedUserModel) then) =
      __$$_RelatedUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class __$$_RelatedUserModelCopyWithImpl<$Res>
    extends _$RelatedUserModelCopyWithImpl<$Res, _$_RelatedUserModel>
    implements _$$_RelatedUserModelCopyWith<$Res> {
  __$$_RelatedUserModelCopyWithImpl(
      _$_RelatedUserModel _value, $Res Function(_$_RelatedUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_$_RelatedUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedUserModel
    with DiagnosticableTreeMixin
    implements _RelatedUserModel {
  _$_RelatedUserModel({required this.id, required this.email});

  factory _$_RelatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedUserModelFromJson(json);

  @override
  final int id;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RelatedUserModel(id: $id, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RelatedUserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedUserModelCopyWith<_$_RelatedUserModel> get copyWith =>
      __$$_RelatedUserModelCopyWithImpl<_$_RelatedUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedUserModelToJson(
      this,
    );
  }
}

abstract class _RelatedUserModel implements RelatedUserModel {
  factory _RelatedUserModel(
      {required final int id,
      required final String email}) = _$_RelatedUserModel;

  factory _RelatedUserModel.fromJson(Map<String, dynamic> json) =
      _$_RelatedUserModel.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedUserModelCopyWith<_$_RelatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
