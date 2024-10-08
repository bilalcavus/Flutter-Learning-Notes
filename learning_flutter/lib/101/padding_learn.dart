import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(color: Colors.white, height: 100)),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(color: Colors.white, height: 100)),
            Padding(
              padding: const EdgeInsets.only(right: 20) +
                  ProjectPadding.pagePaddingVertical,
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.all(10);

  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
