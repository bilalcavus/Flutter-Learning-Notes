import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_flutter/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  NoteDemos({super.key});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Note';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.blueGrey[50],
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBookWithoutPath),
            _titleWidget(title: _title),
            Padding(
                padding: PaddingItems.verticalPadding,
                child: _SubTitleWidget(title: _description * 10)),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headlineSmall,
            ))));
  }
}

//Centered text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
