import 'package:circle_app/client/group_api_client.dart';
import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/result.dart';
import 'package:circle_app/model/api/user.dart';
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
