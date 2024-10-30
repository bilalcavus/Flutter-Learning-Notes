import 'package:flutter/material.dart';
import 'package:learning_flutter/101/image_learn.dart';
import 'package:learning_flutter/101/stack_learn.dart';
import 'package:learning_flutter/demos/notes_demos_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){}, child: const Icon(Icons.chevron_left)),
           FloatingActionButton(onPressed: (){}, child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
       // controller: PageController(viewportFraction: 0.7),
       padEnds: false,
       
        children: [
          const ImageLearn(),
          NoteDemos(),
          const StackLearn()
        ],
      ),
    );
  }
}