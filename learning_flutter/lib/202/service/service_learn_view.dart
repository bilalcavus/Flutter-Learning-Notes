import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/202/service/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({super.key});

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {

  List<PostModel>? _items;
  bool _isLoading = false;

  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

 @override
  void initState() {
    super.initState();
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading; 
    });
    
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
  final response = await Dio().get(baseUrl);

  if (response.statusCode == HttpStatus.ok) {
    final _datas = response.data;

    if (_datas is List ) {
      setState(() {
        _items = _datas.map((e) => PostModel.fromJson(e)).toList();
      });
    }
  }
_changeLoading();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive(): const SizedBox()],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context,index){
        return ListTile(
          title: Text(_items?[index].title ?? ''),
        );
      }
      
      ),
    );
  }
}