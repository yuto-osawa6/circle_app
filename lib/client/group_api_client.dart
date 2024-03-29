import 'dart:io';
import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/group/user_groups.dart';
import 'package:circle_app/model/api/talk/talk.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'group_api_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class GroupApiClient {
  factory GroupApiClient(Dio dio, {String baseUrl}) = _GroupApiClient;
  // @Headers({
  // 'Content-Type': 'application/json', // JSON形式のデータを送信することを指定
  // })
  @POST("/groups")
  Future<GroupCreate> postCreateGroup(@Header("Authorization") auth_token,@Body() GroupCreate group);
  @GET("/users/{user_id}/groups")
  Future<UserGroup> getUserGroups(@Header("Authorization") auth_token,@Path("user_id") int? userId,@Query("page") int? page);

  @GET("/latest_chat_lists")
  Future<Talk?> getGroupsLatestChat(
    @Query("user_id") int userId,
  );
}