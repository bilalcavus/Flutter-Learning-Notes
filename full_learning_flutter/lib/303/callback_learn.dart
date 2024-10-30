import 'package:flutter/material.dart';
import 'package:learning_flutter/product/widget/button/answer_button.dart';
import 'package:learning_flutter/product/widget/button/loading_button.dart';
import 'package:learning_flutter/product/widget/callback_dropdown.dart';

class CallbackLearn extends StatefulWidget {
  const CallbackLearn({super.key});

  @override
  State<CallbackLearn> createState() => _CallbackLearnState();
}

class _CallbackLearnState extends State<CallbackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
      CallbackDropdown(onUserSelected: (CallbackUser user){ //disaridan cagrildi.
        print(user);
      }),
      AnswerButton(onNumber: (number){
        return number % 3 ==1;
      },
      ),
      LoadingButton(title: 'Save', onPressed: () async {
       await Future.delayed(const Duration(seconds: 1));
      })
    ],
      )
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser({required this.name, required this.id});

//TODO dummy remove it
  static List<CallbackUser> dummyUsers(){
    return [
      CallbackUser(name: 'bilal', id: 1),
      CallbackUser(name: 'bilalc', id: 2),
    ];
  }

  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;

    return other is CallbackUser && other.name == name && other.id == id;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => name.hashCode ^ id.hashCode;
}

