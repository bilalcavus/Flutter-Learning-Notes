import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Expanded(flex: 4, child: Container(color: Colors.red,)),
          const Spacer(flex:2),
          const Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text('a'),
            Text('a2'),
            Text('a3'),
          ],)),
          const SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(), 
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );

  }
}