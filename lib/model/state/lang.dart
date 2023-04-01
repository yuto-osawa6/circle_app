import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 
part 'lang.freezed.dart';
 
// @freezed
// abstract class Result<T> with _$Result<T> {
//   const factory Result.success(T value) = Success<T>;
//   const factory Result.failure(DioError error) = Failure<T>;
// }

@freezed
class LangModel with _$LangModel {
  factory LangModel({
    // required String email,
    String? lang
    // @Default("") String email,
    //  @Default(0) int page,
    // String? title,
    // String? description,
  }) = _LangModel;
  // factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}