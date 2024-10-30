import 'dart:convert';
import 'dart:js_interop';

import 'package:learning_flutter/202/cache/shared_learn_cache.dart';
import 'package:learning_flutter/202/cache/shared_manager.dart';

class UserCacheManager {

  final SharedManager sharedManager;

  UserCacheManager({required this.sharedManager});

  void saveItems(List<User> items) {
    final _items = items.map((element) => jsonEncode(element)).toList();
    sharedManager.saveStringItems(SharedKeys.users, _items);
  }
  List<User>? getItems() {
    final itemsString = sharedManager.getStrings(SharedKeys.users);
    if (itemsString?.isNotEmpty ?? false) {
      return itemsString!.map((element) {
        final jsonObject = jsonDecode(element);

        return User(name: 'name', description: 'description', url: 'url');
      }).toList();
    }
    return null;
  }


}

