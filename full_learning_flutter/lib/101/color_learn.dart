import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorsItems.sulu,
            child: const Text('data'),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static final Color porchase = const Color(0xffEDBF61);
  static final Color sulu = Color.fromARGB(198, 237, 97, 1);
}
