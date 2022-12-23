import 'package:circle_app/service/user_service.dart';
// import 'package:yochan/service/api_client.dart';
// import 'package:http_api/service/api_client.dart';

class CreateUserRepository {
  // String token = token;
  final apiClient = ApiClientCreateUser();
  dynamic fetchUsers(token) async {
    return await apiClient.fetchApiCreateUser(token);
  }
}
