import 'dart:io';
// import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/model/api/user/user.dart';
import 'package:circle_app/model/api/user/get_user_api.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:retrofit/http.dart';
// import 'package:retrofit/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'user_api_client.g.dart';


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
  Future<GetUserApi> getFlutterUser(
    @Header("Authorization") auth_token,
    @Header("Device-Token") String device_token
  );
  @PUT("/users/{user_id}/device_token")
  Future<void> updateDeviceToken(
    @Path("user_id") int user_id,
    @Header("Device-Token") String device_token,
  );
}