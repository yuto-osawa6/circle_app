import 'package:circle_app/client/dio/dio.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'group_chat_api_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class GroupChatApiClient {
  factory GroupChatApiClient(Dio dio, {String baseUrl}) = _GroupChatApiClient;

  @POST("/groups/{group_id}/group_chats")
  Future<String> createGroupChat(
    @Path("group_id") int groupId,
    @Body() GroupChatContentCreate groupChatContentCreate,
  );
  @GET('/groups/{group_id}/group_chats')
  Future<List<GroupChat>> getGroupChats(
      @Path('group_id') int groupId, @Query('page') int page);
}
