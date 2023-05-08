
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

var dio = Dio(BaseOptions(
  baseUrl: "http://localhost:8080",
  //  connectTimeout: 5000,
  //  receiveTimeout: 5000,
  //  headers: {HttpHeaders.userAgentHeader: 'dio', 'common-header': 'xx'},
  ));