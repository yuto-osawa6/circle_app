import 'dart:convert';
import 'package:dio/dio.dart';
// import 'package:yochan/model/task.dart';
// import 'package:http/http.dart' as http;


class ApiClientCreateUser {
Future<List<dynamic>?> fetchApiCreateUser(auth_token) async {
  final dio = Dio();
    final response = await dio.get(
      'http://localhost:8080/api/me',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $auth_token",
        },
      ),
    );
    if (response.statusCode == 200) {
      print(response);
      // final datas = response.data["data"] as List<dynamic>;
      // print(response.data);
      // print("aa");
      // final list = body.map((e) => Task.fromJson(e)).toList();
      // final list = datas.map((e) => Task.fromJson(e)).toList();

      // print(list);
      // return list;
    } else {
    }

  }
}