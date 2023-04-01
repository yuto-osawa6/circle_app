import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 
part 'loading_circle.freezed.dart';
 
// @freezed
// abstract class Result<T> with _$Result<T> {
//   const factory Result.success(T value) = Success<T>;
//   const factory Result.failure(DioError error) = Failure<T>;
// }

@freezed
class LoadingCircleModel with _$LoadingCircleModel {
  factory LoadingCircleModel({
    // required String email,
    @Default(true) bool loaded
    // @Default("") String email,
    //  @Default(0) int page,
    // String? title,
    // String? description,
  }) = _LoadingCircle;
  // factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}