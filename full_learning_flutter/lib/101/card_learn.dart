import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectPadding.cardMargin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}

class ProjectPadding {
  static const cardMargin = EdgeInsets.all(10);
}


// borders
// stadiumborder(),circleborder(),roundedrectangleborder()