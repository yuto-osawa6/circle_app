import 'dart:io';
// import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/model/api/user.dart';
import 'package:dio/dio.dart';
// import 'package:retrofit/http.dart';
// import 'package:retrofit/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'user_api_client.g.dart';

// const baseUrl = 'http://192.168.2.101:8080';

@RestApi(baseUrl: baseUrl)
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;
  
  // @POST('/posts')
  // @MultiPart()
  // Future<dynamic> createPost(
  //   @Part() String text,
  //   @Part() File image,
  // );
  @GET("/api/me")
  Future<UserModel> getFlutterUser(@Header("Authorization") auth_token);
}