
class UserManagement <T extends AdminUser> {
  late final T admin;
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var element in users) {
      sum += element.money;
    }

    final sumMoney = users.map((e) => e.money).fold<int>(0, (previousValue, element)=>previousValue+element);
    return sum;
  }
}

class GenericUser{
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);

  bool findUserName(String name) {
    return this.name == name;
  }

  @override
  String toString() => 'GenericUser(name:$name, id:$id, money:$money)';
}

class AdminUser extends GenericUser {
  final int role;

  AdminUser(String name , String id, int money, this.role) : super(name, id, money);
}