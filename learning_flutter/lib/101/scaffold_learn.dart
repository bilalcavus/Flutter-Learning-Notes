import 'package:flutter/material.dart';
import 'package:learning_flutter/101/container_sized_box_learn.dart';
//import 'package:new_project/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('scaffold samples')),
      body: const Text('merhaba'),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        width: 100,
        height: 100,
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: 'asdasd'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ],
        ),
      ),
    );
  }
}
