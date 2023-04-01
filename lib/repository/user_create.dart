import 'package:circle_app/client/user_api_client.dart';
import 'package:circle_app/model/api/result.dart';
import 'package:circle_app/model/api/user.dart';
import 'package:circle_app/service/user_service.dart';
import 'package:circle_app/utils/method/apierror.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
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
  Future<Result<UserModel>> fetchUsers(token) async {
  // Future<UserModel?> fetchUsers(token) async {
    print("token35");
    print(token);
    print("token3");
    final logger = Logger();
    final dio = Dio();
    final client = UserApiClient(dio);

    return client
        .getFlutterUser(token)
        .then((articles) => Result<UserModel>.success(articles))
        .catchError((error) => Result<UserModel>.failure(error));

    // final b = client.getFlutterUser(token).then((it) {
    // print("---------it");
    // print(it);
    // return Result<UserModel>.success(it);
    // }).catchError((Object obj) {

    // final res = (obj as DioError).response;
    // print(res);
    // print("res");
    // logger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");

    // return Result<UserModel>.failure(obj);
    // });
// final b = await client.getFlutterUser(token);

    // try{
    //   final b = await client.getFlutterUser(token);
    //   return b;
    // }catch (e) {
    //   // print("e");
    //   // throw e;
    //   // return e;
    // } 


    // return await client.getFlutterUser(token);


    // apiError(obj,context);
    // return null;
    //  throw res;
    // print(obj);
    // return null;
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
    // });
  }
}

