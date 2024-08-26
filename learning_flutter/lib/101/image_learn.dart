import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 300,
          width: 500,
          child: PngImage(name: ImageItems().appleBookWithoutPath),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'assets/book.png';
  final String appleBookWithoutPath = 'book';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
      height: 250,
      width: 300,
    );
  }

  String get _nameWithPath => 'assets/$name.png';
}
