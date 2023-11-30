import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 
part 'result.freezed.dart';
 
@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(dynamic error) = Failure<T>;
  // const factory Result.other(dynamic error) = Other<T>;
}