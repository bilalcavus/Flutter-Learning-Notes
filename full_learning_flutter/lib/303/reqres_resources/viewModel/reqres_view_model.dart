import 'package:learning_flutter/202/cache/shared_learn_cache.dart';
import 'package:learning_flutter/303/reqres_resources/model/resource_model.dart';
import 'package:learning_flutter/303/reqres_resources/service/reqres_service.dart';
import 'package:learning_flutter/303/reqres_resources/view/reqres_view.dart';
import 'package:learning_flutter/product/service/project_dio.dart';
import 'package:learning_flutter/product/service/project_network_manager.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqresView> with ProjectDioMixin{
 late final IReqresService reqresService; // late final dersek sadece initState içerisinde eşitleyebiliriz.

  List <Data> resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(ProjectNetworkManager.instance.service);
    ProjectNetworkManager.instance.addBaseHeaderToToken('bilal');
    _fetch();
  }

  void _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}