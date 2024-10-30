
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learning_flutter/303/generic_learn.dart';
import 'package:learning_flutter/product/widget/card/high_card.dart';

void main() {
  setUp((){});

  test('List best of', (){
    List<GenericUser> users = [
    GenericUser('bç','11',10),
    GenericUser('hzk', '12', 13),
    GenericUser('zk', '13', 15),
    ];
    
    List<HighCard> highCards = users.map((e){
      return HighCard(items: e.name.split('').toList());
    }).toList();

    try {
    final response = users.singleWhere((element) => element.findUserName('x'),orElse: (){
      return GenericUser('name', 'id', 35);
    });
    print(response.name);
    } catch (e) {
      print(e);
    }

    print('${users.where((element)=>element.money>500)}');

    users.addAll([GenericUser('name', 'id', 15)]);
    users.lastWhere((element)=>element.id == '5');

    users.take(5);
  });


  test('List best of with collection', (){
    List<GenericUser> users = [
    GenericUser('bç','11',10),
    GenericUser('hzk', '12', 13),
    GenericUser('zk', '13', 15),
    ];
    
    
      final response = users.singleWhereOrNull(
        (element) => element.findUserName('x'),);

      users.lastWhereOrNull((element)=>element.id == '5');

      print(response);
  });
}