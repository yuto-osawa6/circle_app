// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_circle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingCircleModel {
// required String email,
  bool get loaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingCircleModelCopyWith<LoadingCircleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCircleModelCopyWith<$Res> {
  factory $LoadingCircleModelCopyWith(
          LoadingCircleModel value, $Res Function(LoadingCircleModel) then) =
      _$LoadingCircleModelCopyWithImpl<$Res, LoadingCircleModel>;
  @useResult
  $Res call({bool loaded});
}

/// @nodoc
class _$LoadingCircleModelCopyWithImpl<$Res, $Val extends LoadingCircleModel>
    implements $LoadingCircleModelCopyWith<$Res> {
  _$LoadingCircleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loaded = null,
  }) {
    return _then(_value.copyWith(
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCircleCopyWith<$Res>
    implements $LoadingCircleModelCopyWith<$Res> {
  factory _$$_LoadingCircleCopyWith(
          _$_LoadingCircle value, $Res Function(_$_LoadingCircle) then) =
      __$$_LoadingCircleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loaded});
}

/// @nodoc
class __$$_LoadingCircleCopyWithImpl<$Res>
    extends _$LoadingCircleModelCopyWithImpl<$Res, _$_LoadingCircle>
    implements _$$_LoadingCircleCopyWith<$Res> {
  __$$_LoadingCircleCopyWithImpl(
      _$_LoadingCircle _value, $Res Function(_$_LoadingCircle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loaded = null,
  }) {
    return _then(_$_LoadingCircle(
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingCircle implements _LoadingCircle {
  _$_LoadingCircle({this.loaded = true});

// required String email,
  @override
  @JsonKey()
  final bool loaded;

  @override
  String toString() {
    return 'LoadingCircleModel(loaded: $loaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingCircle &&
            (identical(other.loaded, loaded) || other.loaded == loaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCircleCopyWith<_$_LoadingCircle> get copyWith =>
      __$$_LoadingCircleCopyWithImpl<_$_LoadingCircle>(this, _$identity);
}

abstract class _LoadingCircle implements LoadingCircleModel {
  factory _LoadingCircle({final bool loaded}) = _$_LoadingCircle;

  @override // required String email,
  bool get loaded;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCircleCopyWith<_$_LoadingCircle> get copyWith =>
      throw _privateConstructorUsedError;
}
