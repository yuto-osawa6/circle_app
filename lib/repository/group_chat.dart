import 'package:circle_app/client/group_api_client.dart';
import 'package:circle_app/client/group_chat_api_client.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:circle_app/model/api/result.dart';
import 'package:dio/dio.dart';

class GroupChatRepository {
  Future<Result<GroupChatContentCreate>> fetchCreateGroupChatContent(int group_id, GroupChatContentCreate body) async {
    // print("token35");
    // print(token);
    print("GroupChatContent");
    // final logger = Logger();
    final dio = Dio();
    final client = GroupChatApiClient(dio);

    return client
        .createGroupChat(group_id,body)
        .then((i) => Result<GroupChatContentCreate>.success(i))
        .catchError((error) => Result<GroupChatContentCreate>.failure(error));
  }
}