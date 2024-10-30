import 'dart:io';

import 'package:dio/dio.dart';
import 'package:learning_flutter/303/reqres_resources/model/resource_model.dart';

abstract class IReqresService{
  IReqresService(this.dio);
  final Dio dio;

  Future<ResourcesModel?> fetchResourceItem();
}

const String resourceBaseUrl = 'https://reqres.in/api/unknown/';

class ReqresService extends IReqresService {
  ReqresService(Dio dio) : super(dio);
  @override
  Future<ResourcesModel?> fetchResourceItem() async {
    final response = await dio.get(resourceBaseUrl);

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String,dynamic>) {
        return ResourcesModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}