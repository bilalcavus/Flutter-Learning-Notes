import 'package:dio/dio.dart';

mixin ProjectDioMixin {
  Dio get service => Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}
