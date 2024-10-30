
import 'package:flutter/material.dart';
import 'package:learning_flutter/202/cache/shared_manager.dart';

class SharedLearnCache extends StatefulWidget {
  const SharedLearnCache({super.key});

  @override
  State<SharedLearnCache> createState() => _SharedLearnCacheState();
}

class _SharedLearnCacheState extends LoadingStatefull<SharedLearnCache> { 
  int _currentValue = 0;
  late final SharedManager _manager;

 late List<User> userItems = [];

  @override
 void initState(){
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    _onChangeValue(_manager.getString(SharedKeys.counter)?? '');
  }


  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentValue.toString()),
      actions: [
     loading(context)
      ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, //yan yana daha iyi durması için
        children: [
          _saveValueButton(),
          _removeValueButton()
        ],
      ),
      body:  Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            } ,
          ),
          Expanded(child: 
            _UserListView(),
          )
        ],
      ),
    );
  }

  SingleChildRenderObjectWidget loading(BuildContext context) {
    return isLoading? Center(child: CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor,)) : const SizedBox();
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(child: Icon(Icons.save), onPressed: (() async {
      changeLoading();
      await _manager.saveString(SharedKeys.counter, _currentValue.toString());
      changeLoading();
    }));
  }

  FloatingActionButton _removeValueButton(){
    return FloatingActionButton(
      child: Icon(Icons.delete_outline_rounded),
      onPressed: (() async {
        changeLoading();
        await _manager.removeItem(SharedKeys.counter);
        changeLoading();
      }));
  }
}

class _UserListView extends StatelessWidget {
   _UserListView({
    Key? key,
   
  }) : super(key:key);

final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: users.length,
     itemBuilder: (BuildContext context, int index){
      return Card(
        child: ListTile(
          title: Text(users[index].name),
          subtitle: Text(users[index].description),
          trailing: Text(users[index].url, style: Theme.of(context).textTheme.titleMedium?.copyWith(
            decoration: TextDecoration.underline
          ),),
        ),
      );
     }
     );
  }
}


class User {
  final String name;
  final String description;
  final String url;

  User({required this.name, required this.description, required this.url});
}

class UserItems {
  late final List<User> users;
  UserItems(){
    users = [
      User(name: 'bc', description: 'description', url: 'bc.dev'),
      User(name: 'zk', description: 'description', url: 'zk.dev'),
      User(name: 'hzk', description: 'description', url: 'hzk.dev'),
    ];
  }
}

//Generic
abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading =  false;
  void changeLoading(){
    setState(() {
      isLoading = !isLoading;
    });
  }
}