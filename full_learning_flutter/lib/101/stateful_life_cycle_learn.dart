import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override

  void didChangeDependencies(){
    super.didChangeDependencies();
    _computeName();
  }
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
       if(_isOdd){
      _message += 'Cift';
    }
    else {
      _message += 'Tek';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ), 
      body: _isOdd 
      ?TextButton(onPressed: (){}, child: Text(_message))
      :ElevatedButton(onPressed: (){}, child: Text(_message)) ,
    );
  }
}