import 'package:flutter/material.dart';
import 'package:learning_flutter/202/state_manage/state_manage_learn_view.dart';

abstract class StateViewLearnModel  extends State<StateManageLearnView> {
      @override
  void initState(){
    super.initState();

  }

  bool isVisible = false;
  bool isOpacity = false;

   late AnimationController controller ;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }
  void changeOpacity(){
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}