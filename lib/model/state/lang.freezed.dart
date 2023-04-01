// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LangModel {
// required String email,
  String? get lang => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LangModelCopyWith<LangModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangModelCopyWith<$Res> {
  factory $LangModelCopyWith(LangModel value, $Res Function(LangModel) then) =
      _$LangModelCopyWithImpl<$Res, LangModel>;
  @useResult
  $Res call({String? lang});
}

/// @nodoc
class _$LangModelCopyWithImpl<$Res, $Val extends LangModel>
    implements $LangModelCopyWith<$Res> {
  _$LangModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LangModelCopyWith<$Res> implements $LangModelCopyWith<$Res> {
  factory _$$_LangModelCopyWith(
          _$_LangModel value, $Res Function(_$_LangModel) then) =
      __$$_LangModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lang});
}

/// @nodoc
class __$$_LangModelCopyWithImpl<$Res>
    extends _$LangModelCopyWithImpl<$Res, _$_LangModel>
    implements _$$_LangModelCopyWith<$Res> {
  __$$_LangModelCopyWithImpl(
      _$_LangModel _value, $Res Function(_$_LangModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_$_LangModel(
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LangModel implements _LangModel {
  _$_LangModel({this.lang});

// required String email,
  @override
  final String? lang;

  @override
  String toString() {
    return 'LangModel(lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LangModel &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LangModelCopyWith<_$_LangModel> get copyWith =>
      __$$_LangModelCopyWithImpl<_$_LangModel>(this, _$identity);
}

abstract class _LangModel implements LangModel {
  factory _LangModel({final String? lang}) = _$_LangModel;

  @override // required String email,
  String? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_LangModelCopyWith<_$_LangModel> get copyWith =>
      throw _privateConstructorUsedError;
}
