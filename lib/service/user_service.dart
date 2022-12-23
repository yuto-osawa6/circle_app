import 'dart:convert';
import 'package:circle_app/model/api/user.dart';
import 'package:dio/dio.dart';
import 'package:circle_app/service/dio/dio.dart';

// import 'package:yochan/model/task.dart';
// import 'package:http/http.dart' as http;


class ApiClientCreateUser {
// Future<List<dynamic>?> fetchApiCreateUser(auth_token) async {
Future<UserModel?> fetchApiCreateUser(auth_token) async {

  // dio.options.baseUrl = 'https://www.xx.com/api';
  try{

  
    final response = await dio.get(
      // 'http://localhost:8080/api/me',
      '/',
      // 'http://localhost:8080',

      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer $auth_token",
        },
      ),
    );
    if (response.statusCode == 200) {
      print(response.data);
      print(response.data.runtimeType);
      print("----");
      print("----");
      print(response);
      print(response.runtimeType);
      print("----");
      print("----");
      print(response.data as dynamic);
      print((response.data as dynamic).runtimeType);
      // var jsonResponse = jsonDecode(response.data);
      // print(jsonResponse);
      // print(jsonResponse.runtimeType);
      // final datas = response.data["data"] as List<dynamic>;
      // print(response.data);
      // print("aa");
      // final list = body.map((e) => Task.fromJson(e)).toList();
      // final list = datas.map((e) => Task.fromJson(e)).toList();

      // print(list);
      // return response.data as UserModel;
      return UserModel.fromJson(response.data);

    } else {
    }
  }catch(e){

  }


  }
}