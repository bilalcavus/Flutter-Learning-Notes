import 'package:flutter/material.dart';
import 'package:learning_flutter/202/package/loading_bar.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(),
      body: LoadingBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
       // showAboutDialog(context: context,applicationName: 'Bilal', children: [const Text('data')]);
       //   showDialog(context: context, builder: (context){return const Text('data');});
      }),
    );
  }
}