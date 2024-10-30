// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'best one';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(child: Text('button'), onPressed: () {}), //ios button
          TextButton(
              onPressed: () {}, child: const Text('button')), //android button
          Text(
            ("buy the $name"),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            ("Welcome $name ${name.length}"),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.yellow),
          ),
          Text(userName ?? ''),
          Text(keys.welcome)
        ],
      ),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.red,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
