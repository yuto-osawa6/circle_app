import 'dart:convert';
import 'package:circle_app/model/task.dart';
// import 'package:http/http.dart' as http;


// class ApiClientTasks {
// Future<List<Tasks>?> fetchApiTasks() async {
//   List<Tasks> _tasks = [];
//   var url = "http://localhost:8080/";
//   try {
//     final response = await http.get(Uri.parse(
//           'http://localhost:8080/tasks'));
//     if (response.statusCode == 200) {
//       final List<dynamic> body = jsonDecode(utf8.decode(response.body.runes.toList()))["data"];
//       final List<Tasks> users =
//         body.map((dynamic user) => Tasks.fromJson(user)).toList();
//         print(users.first.title);
//         print(users.length);
//         return body;
//     } else {
//     }
//   } catch (e) {
//     print(e.toString());
//     return null;
//   }
//   return null;
// }
// }

// class ApiClientTasks {
// Future<List<dynamic>?> fetchApiTasks() async {
//   // List<Tasks> _tasks = [];
//   var url = "http://localhost:8080/";
//   try {
//     final response = await http.get(Uri.parse(
//           'http://localhost:8080/tasks'));
//     if (response.statusCode == 200) {
//       final List<dynamic> body = jsonDecode(utf8.decode(response.body.runes.toList()))["data"];
//       // final List<Tasks> users =
//       //   body.map((dynamic user) => Tasks.fromJson(user)).toList();
//       //   print(users.first.title);
//         print(body);
//         return body;
//     } else {
//     }
//   } catch (e) {
//     print(e.toString());
//     return null;
//   }
//   return null;
// }
// }