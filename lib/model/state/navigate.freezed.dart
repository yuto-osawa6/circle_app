// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigateActionModel {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigateActionModelCopyWith<NavigateActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionModelCopyWith<$Res> {
  factory $NavigateActionModelCopyWith(
          NavigateActionModel value, $Res Function(NavigateActionModel) then) =
      _$NavigateActionModelCopyWithImpl<$Res, NavigateActionModel>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$NavigateActionModelCopyWithImpl<$Res, $Val extends NavigateActionModel>
    implements $NavigateActionModelCopyWith<$Res> {
  _$NavigateActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigateActionModelCopyWith<$Res>
    implements $NavigateActionModelCopyWith<$Res> {
  factory _$$_NavigateActionModelCopyWith(_$_NavigateActionModel value,
          $Res Function(_$_NavigateActionModel) then) =
      __$$_NavigateActionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_NavigateActionModelCopyWithImpl<$Res>
    extends _$NavigateActionModelCopyWithImpl<$Res, _$_NavigateActionModel>
    implements _$$_NavigateActionModelCopyWith<$Res> {
  __$$_NavigateActionModelCopyWithImpl(_$_NavigateActionModel _value,
      $Res Function(_$_NavigateActionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_NavigateActionModel(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigateActionModel
    with DiagnosticableTreeMixin
    implements _NavigateActionModel {
  _$_NavigateActionModel({this.page = 0});

  @override
  @JsonKey()
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigateActionModel(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigateActionModel'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateActionModel &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigateActionModelCopyWith<_$_NavigateActionModel> get copyWith =>
      __$$_NavigateActionModelCopyWithImpl<_$_NavigateActionModel>(
          this, _$identity);
}

abstract class _NavigateActionModel implements NavigateActionModel {
  factory _NavigateActionModel({final int page}) = _$_NavigateActionModel;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_NavigateActionModelCopyWith<_$_NavigateActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
