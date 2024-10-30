import 'package:flutter/material.dart';
import 'package:learning_flutter/202/state_manage/state_view_learn_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateViewLearnModel {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        changeVisible();
        changeOpacity();
      }),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}