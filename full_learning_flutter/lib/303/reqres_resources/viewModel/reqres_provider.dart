

import 'package:flutter/material.dart';
import 'package:learning_flutter/303/reqres_resources/model/resource_model.dart';
import 'package:learning_flutter/303/reqres_resources/service/reqres_service.dart';
import 'package:learning_flutter/product/global/resources_context.dart';

class ReqResProvider extends ChangeNotifier {
   final IReqresService reqresService; // late final dersek sadece initState içerisinde eşitleyebiliriz.

  List <Data> resources = [];
  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqResProvider(this.reqresService){
    _fetch();
  }

  void _fetch() async {
    _changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    _changeLoading();
  }

  void saveToLocale(ResourcesContext resourcesContext) {
    resourcesContext.saveModel(ResourcesModel(data: resources));
  }
}