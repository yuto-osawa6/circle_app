// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignModel {
  String get newUserEmail => throw _privateConstructorUsedError;
  String get newUserPassword => throw _privateConstructorUsedError;
  String get loginUserEmail => throw _privateConstructorUsedError;
  String get loginUserPassword => throw _privateConstructorUsedError;
  String get infoText => throw _privateConstructorUsedError;
  bool get openEye => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignModelCopyWith<SignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignModelCopyWith<$Res> {
  factory $SignModelCopyWith(SignModel value, $Res Function(SignModel) then) =
      _$SignModelCopyWithImpl<$Res>;
  $Res call(
      {String newUserEmail,
      String newUserPassword,
      String loginUserEmail,
      String loginUserPassword,
      String infoText,
      bool openEye});
}

/// @nodoc
class _$SignModelCopyWithImpl<$Res> implements $SignModelCopyWith<$Res> {
  _$SignModelCopyWithImpl(this._value, this._then);

  final SignModel _value;
  // ignore: unused_field
  final $Res Function(SignModel) _then;

  @override
  $Res call({
    Object? newUserEmail = freezed,
    Object? newUserPassword = freezed,
    Object? loginUserEmail = freezed,
    Object? loginUserPassword = freezed,
    Object? infoText = freezed,
    Object? openEye = freezed,
  }) {
    return _then(_value.copyWith(
      newUserEmail: newUserEmail == freezed
          ? _value.newUserEmail
          : newUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      newUserPassword: newUserPassword == freezed
          ? _value.newUserPassword
          : newUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
      loginUserEmail: loginUserEmail == freezed
          ? _value.loginUserEmail
          : loginUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loginUserPassword: loginUserPassword == freezed
          ? _value.loginUserPassword
          : loginUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
      infoText: infoText == freezed
          ? _value.infoText
          : infoText // ignore: cast_nullable_to_non_nullable
              as String,
      openEye: openEye == freezed
          ? _value.openEye
          : openEye // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SignModelCopyWith<$Res> implements $SignModelCopyWith<$Res> {
  factory _$$_SignModelCopyWith(
          _$_SignModel value, $Res Function(_$_SignModel) then) =
      __$$_SignModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String newUserEmail,
      String newUserPassword,
      String loginUserEmail,
      String loginUserPassword,
      String infoText,
      bool openEye});
}

/// @nodoc
class __$$_SignModelCopyWithImpl<$Res> extends _$SignModelCopyWithImpl<$Res>
    implements _$$_SignModelCopyWith<$Res> {
  __$$_SignModelCopyWithImpl(
      _$_SignModel _value, $Res Function(_$_SignModel) _then)
      : super(_value, (v) => _then(v as _$_SignModel));

  @override
  _$_SignModel get _value => super._value as _$_SignModel;

  @override
  $Res call({
    Object? newUserEmail = freezed,
    Object? newUserPassword = freezed,
    Object? loginUserEmail = freezed,
    Object? loginUserPassword = freezed,
    Object? infoText = freezed,
    Object? openEye = freezed,
  }) {
    return _then(_$_SignModel(
      newUserEmail: newUserEmail == freezed
          ? _value.newUserEmail
          : newUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      newUserPassword: newUserPassword == freezed
          ? _value.newUserPassword
          : newUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
      loginUserEmail: loginUserEmail == freezed
          ? _value.loginUserEmail
          : loginUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loginUserPassword: loginUserPassword == freezed
          ? _value.loginUserPassword
          : loginUserPassword // ignore: cast_nullable_to_non_nullable
              as String,
      infoText: infoText == freezed
          ? _value.infoText
          : infoText // ignore: cast_nullable_to_non_nullable
              as String,
      openEye: openEye == freezed
          ? _value.openEye
          : openEye // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignModel with DiagnosticableTreeMixin implements _SignModel {
  _$_SignModel(
      {this.newUserEmail = "",
      this.newUserPassword = "",
      this.loginUserEmail = "",
      this.loginUserPassword = "",
      this.infoText = "",
      this.openEye = false});

  @override
  @JsonKey()
  final String newUserEmail;
  @override
  @JsonKey()
  final String newUserPassword;
  @override
  @JsonKey()
  final String loginUserEmail;
  @override
  @JsonKey()
  final String loginUserPassword;
  @override
  @JsonKey()
  final String infoText;
  @override
  @JsonKey()
  final bool openEye;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignModel(newUserEmail: $newUserEmail, newUserPassword: $newUserPassword, loginUserEmail: $loginUserEmail, loginUserPassword: $loginUserPassword, infoText: $infoText, openEye: $openEye)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignModel'))
      ..add(DiagnosticsProperty('newUserEmail', newUserEmail))
      ..add(DiagnosticsProperty('newUserPassword', newUserPassword))
      ..add(DiagnosticsProperty('loginUserEmail', loginUserEmail))
      ..add(DiagnosticsProperty('loginUserPassword', loginUserPassword))
      ..add(DiagnosticsProperty('infoText', infoText))
      ..add(DiagnosticsProperty('openEye', openEye));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignModel &&
            const DeepCollectionEquality()
                .equals(other.newUserEmail, newUserEmail) &&
            const DeepCollectionEquality()
                .equals(other.newUserPassword, newUserPassword) &&
            const DeepCollectionEquality()
                .equals(other.loginUserEmail, loginUserEmail) &&
            const DeepCollectionEquality()
                .equals(other.loginUserPassword, loginUserPassword) &&
            const DeepCollectionEquality().equals(other.infoText, infoText) &&
            const DeepCollectionEquality().equals(other.openEye, openEye));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newUserEmail),
      const DeepCollectionEquality().hash(newUserPassword),
      const DeepCollectionEquality().hash(loginUserEmail),
      const DeepCollectionEquality().hash(loginUserPassword),
      const DeepCollectionEquality().hash(infoText),
      const DeepCollectionEquality().hash(openEye));

  @JsonKey(ignore: true)
  @override
  _$$_SignModelCopyWith<_$_SignModel> get copyWith =>
      __$$_SignModelCopyWithImpl<_$_SignModel>(this, _$identity);
}

abstract class _SignModel implements SignModel {
  factory _SignModel(
      {final String newUserEmail,
      final String newUserPassword,
      final String loginUserEmail,
      final String loginUserPassword,
      final String infoText,
      final bool openEye}) = _$_SignModel;

  @override
  String get newUserEmail;
  @override
  String get newUserPassword;
  @override
  String get loginUserEmail;
  @override
  String get loginUserPassword;
  @override
  String get infoText;
  @override
  bool get openEye;
  @override
  @JsonKey(ignore: true)
  _$$_SignModelCopyWith<_$_SignModel> get copyWith =>
      throw _privateConstructorUsedError;
}
