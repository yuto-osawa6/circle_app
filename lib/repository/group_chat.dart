import 'package:circle_app/client/group_api_client.dart';
import 'package:circle_app/client/group_chat_api_client.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:circle_app/model/api/result.dart';
import 'package:dio/dio.dart';

class GroupChatRepository {
  Future<Result<String>> fetchCreateGroupChatContent(int group_id, GroupChatContentCreate body) async {
    // print("token35");
    // print(token);
    print("GroupChatContent");
    // final logger = Logger();
    final dio = Dio();
    final client = GroupChatApiClient(dio);

    return client
        .createGroupChat(group_id,body)
        .then((i) => Result<String>.success(i))
        .catchError((error) => Result<String>.failure(error));
  }

  Future<Result<List<GroupChat>>> fetchGroupChats(int group_id, int page) async {
    // print("token35");
    // print(token);
    print("GroupChat");
    // final logger = Logger();
    final dio = Dio();
    final client = GroupChatApiClient(dio);

    return client
        .getGroupChats(group_id,page)
        .then((i) => Result<List<GroupChat>>.success(i))
        .catchError((error) => Result<List<GroupChat>>.failure(error));
  }


}