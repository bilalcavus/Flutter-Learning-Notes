import 'package:flutter/material.dart';
import 'package:learning_flutter/202/image_learn_202.dart';
import 'package:learning_flutter/303/reqres_resources/model/resource_model.dart';
import 'package:learning_flutter/303/reqres_resources/service/reqres_service.dart';
import 'package:learning_flutter/303/reqres_resources/viewModel/reqres_provider.dart';
import 'package:learning_flutter/product/extension/string_extension.dart';
import 'package:learning_flutter/product/global/resources_context.dart';
import 'package:learning_flutter/product/global/theme_notifier.dart';
import 'package:learning_flutter/product/service/project_dio.dart';
import 'package:provider/provider.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

// class _ReqresViewState extends ReqresViewModel{
class _ReqresViewState extends State<ReqresView> with ProjectDioMixin{
  
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <ReqResProvider> (
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child){
        return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          context.read<ThemeNotifier>().changeTheme();
        }),
        appBar: AppBar(actions: [ElevatedButton(onPressed: (){
          context.read<ReqResProvider>().saveToLocale(context.read<ResourcesContext>());
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
           return const ImageLearn202();
          }));
        }, child: const Icon(Icons.ac_unit))],
          title: context.watch<ReqResProvider>().isLoading ? const CircularProgressIndicator() : null),
        body: Column(
          children: [
            Selector<ReqResProvider,bool>(builder: (context,value,child){
              return value ? const Placeholder() : const Text('data');
            }, selector: (context,provider){
              return provider.isLoading;
            }),
            Expanded(child: _resourcesListView(context,context.watch<ReqResProvider>().resources)),
          ],
        ),
      );
      },
    );
  }

  ListView _resourcesListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(items[index].color?.ColorValue ?? 0),
            child: Text(items[index].name ?? ''));
        },
      );
  }
}