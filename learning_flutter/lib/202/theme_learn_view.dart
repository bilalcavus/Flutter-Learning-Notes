import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/202/password_textfield.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const PasswordTextfield(controller: null,),
        CheckboxListTile(title: const Text('Select'), value: true, onChanged: (val){}),
      ],),
    );
  }
}


