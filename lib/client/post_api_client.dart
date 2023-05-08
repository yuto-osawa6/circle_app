// import 'package:circle_app/model/api/user.dart';
// import 'package:dio/dio.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:retrofit/http.dart';
 
// part 'user_client.g.dart';
 
// abstract class UserClient {
//   factory UserClient(Dio dio, {String baseUrl}) = _UserClient;
 
//   @GET("/")
//   Future<dynamic> fetchUser1();
// }

// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:retrofit/http.dart';

// part 'post_api_client.g.dart';

// @RestApi(baseUrl: 'http://localhost/api/')
// abstract class PostApiClient {
//   factory PostApiClient(Dio dio, {String baseUrl}) = _PostApiClient;
  
//   @POST('/posts')
//   @MultiPart()
//   Future<dynamic> createPost(
//     @Part() String text,
//     @Part() File image,
//   );
// }
import 'package:circle_app/model/api/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api_client.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tasks")
  Future<List<UserModel>> getTasks();
}

// @JsonSerializable()
// class Task {
//   String? id;
//   String? name;
//   String? avatar;
//   String? createdAt;

//   Task({this.id, this.name, this.avatar, this.createdAt});

//   factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
//   Map<String, dynamic> toJson() => _$TaskToJson(this);
// }
