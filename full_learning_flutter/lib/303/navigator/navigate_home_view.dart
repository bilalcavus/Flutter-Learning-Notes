import 'package:flutter/material.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.abc_rounded),
        onPressed: (){
          Navigator.of(context).pushNamed("/asdas",
          arguments: "abc"
          );
      }),
      appBar: AppBar(title: Text(toString())),
    );
  }
}