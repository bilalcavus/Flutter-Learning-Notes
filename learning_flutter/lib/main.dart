import 'package:flutter/material.dart';
import 'package:learning_flutter/202/service/service_learn_view.dart';
import 'package:learning_flutter/202/theme/light_Theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightTheme().theme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      home:  ServiceLearnView(),
      
    );
  }
}
