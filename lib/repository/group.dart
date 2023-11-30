import 'package:circle_app/client/group_api_client.dart';
import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/group/user_groups.dart';
import 'package:circle_app/model/api/result.dart';
import 'package:circle_app/model/api/user/user.dart';
import 'package:circle_app/service/user_service.dart';
import 'package:circle_app/utils/method/apierror.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class GroupCreateRepository {
  Future<Result<GroupCreate>> fetchCreateGroup(String token,GroupCreate group) async {
    print("token35");
    print(token);
    print("token3");
    final logger = Logger();
    final dio = Dio();
    final client = GroupApiClient(dio);

    return client
        .postCreateGroup("Bearer ${token}",group)
        .then((i) => Result<GroupCreate>.success(i))
        .catchError((error) => Result<GroupCreate>.failure(error));
  }
}

class GetUserGroupsRepository {
  Future<Result<UserGroup>>getUserGroups(String token,int? user_id,int page) async {
    print("token35");
    print(token);
    print("token3");
    final logger = Logger();
    final dio = Dio();
    final client = GroupApiClient(dio);

    // return client
    //     .getUserGroups("Bearer ${token}",user_id)
    //     .then((i) => Result<List<Group>>.success(i))
    //     .catchError((error) => Result<List<Group>>.failure(error));
    // return client
    //     .getUserGroups("Bearer ${token}",user_id)
    //     .then((i) => Result<List<Group>>.success(i))
    //     .catchError((error) => Result<List<Group>>.failure(error));
    try {
      final groups = await client.getUserGroups("Bearer $token", user_id,page);
      print("group:${groups}");
      return Result<UserGroup>.success(groups);
    }on DioError catch (error) {
      return Result<UserGroup>.failure(error);
    }
  }
}
