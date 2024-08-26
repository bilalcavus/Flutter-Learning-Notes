import 'package:flutter/material.dart';

class TextFieldLearn extends StatelessWidget {
  const TextFieldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: 'mail',
        ),
      ),
    );
  }
}