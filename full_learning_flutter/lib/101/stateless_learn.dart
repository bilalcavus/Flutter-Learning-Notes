import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text2 = 'text'; // textler burada olmalı
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const _emptyBox(),
          TitleTextWidget(text: text2),
          const TitleTextWidget(text: "text1"),
          const _emptyBox(),
          const TitleTextWidget(text: "text2"),
          const TitleTextWidget(text: "text3"),
          const _CustomContainer(),
          const _emptyBox()
        ],
      ),
    );
  }
}

class _emptyBox extends StatelessWidget {
  const _emptyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineSmall);
  }
}
