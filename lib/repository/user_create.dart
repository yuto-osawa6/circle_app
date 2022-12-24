import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/model/api/user.dart';
import 'package:circle_app/service/user_service.dart';
import 'package:dio/dio.dart';
// import 'package:yochan/service/api_client.dart';
// import 'package:http_api/service/api_client.dart';

// class CreateUserRepository {
//   // String token = token;
//   final apiClient = ApiClientCreateUser();
//   dynamic fetchUsers(token) async {
//     return await apiClient.fetchApiCreateUser(token);
//   }
// }

class CreateUserRepository {
//   final dio = Dio();
// final client = UserApiClient(dio);

  // final dio = Dio();
  // final client = UserApiClient(dio);
  // final logger = Logger();
  // String token = token;
  // final apiClient = UserApiClient();
  Future<UserModel?> fetchUsers(token) async {
    print("token35");
    print(token);
    print("token3");
    final dio = Dio();
    final client = UserApiClient(dio);
    // return await client.getFlutterUser(token);
    // final logger = Logger();
    final b = client.getFlutterUser(token).then((it) {
    // logger.i(it);
    print("---------it");
    print(it);
    return it;
    }).catchError((Object obj) {
    print("token");
    print(token);
    print("token");

    final res = (obj as DioError).response;
    print(res);
    print("res");
    print(obj);
    // non-200 error goes here.
    // switch (obj.runtimeType) {
    //   case DioError:
    //     // Here's the sample to get the failed response error code and message
    //     final res = (obj as DioError).response;
    //     logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
    //     break;
    //   default:
    //     break;
    // }
    });
  }
}

