import 'package:flutter_test/flutter_test.dart';
import 'package:learning_flutter/303/generic_learn.dart';

void main() {
  setUp((){});

  test('user calculate', (){
    final users = [
    GenericUser('bç','11',10),
    GenericUser('hzk', '12', 13),
    GenericUser('zk', '13', 15),
    ];

  final result = UserManagement().calculateMoney(users);

  expect(result, 38);
  });
}