import 'package:flutter/material.dart';
import 'package:learning_flutter/product/counter_hello_button.dart';
import 'package:learning_flutter/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;
  void _updateCounter(bool isIncrement) {
     
     if(isIncrement) {
      _countValue = _countValue +1;
     }
     else {
      _countValue = _countValue -1;
     }
     setState(() {});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle),),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
           _deincrementButton(),
        ],
      ),
      body:  Column(
        children: [
          Center(child:  Text(_countValue.toString(), style: Theme.of(context).textTheme.headlineMedium,)),
          Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(onPressed: (){
      _updateCounter(true);
    },
        child: Icon(Icons.add),
        
        );
  }

  Padding _deincrementButton() {
    return Padding(
           padding: const EdgeInsets.only(left: 10),
           child: FloatingActionButton(onPressed: (){
            _updateCounter(false);
           }, 
           child: Icon(Icons.remove), ),
         );
  }
}