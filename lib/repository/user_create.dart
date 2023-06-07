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
  Future<Result<UserModel?>> fetchUsers(token) async {
  // Future<UserModel?> fetchUsers(token) async {
    print("token35");
    print(token);
    print("token3");
    final logger = Logger();
    final dio = Dio();
    final client = UserApiClient(dio);

    return client
        .getFlutterUser(token)
        // .then((articles) => Result<UserModel>.success(articles))
        // .catchError((error) => Result<UserModel>.failure(error));
        .then((articles) {
          print("afe2");
          print(articles);
          print("afe");
          return Result<UserModel>.success(articles);
        })
        .catchError((error) {
          print(error);
          print("afe");
    if (error is DioError) {
      print("error:${error}");
      return Result<UserModel>.failure(error);
    } else {
      print(error);
      print("errorが起きました");
      return Result<UserModel>.failure(error);
      // Handle other types of errors or fallback to a default error value
      // return Result<UserModel>.failure(DefaultError());
    } });
  //   try {
  //   print("token35");
  //   print(token);
  //   print("token3");
  //   final logger = Logger();
  //   final dio = Dio();
  //   final client = UserApiClient(dio);

  //   final articles = await client.getFlutterUser(token);
  //   return Result<UserModel>.success(articles);
  // } catch (error) {
  //   return Result<UserModel>.failure(error);
  // }

  }
}

