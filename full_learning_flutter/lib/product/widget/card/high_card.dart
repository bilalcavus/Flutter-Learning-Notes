import 'package:flutter/material.dart';

class HighCard extends StatelessWidget {
   HighCard({Key? key, required this.items}): super(key: key);

  List<String> items;
  @override
  Widget build(BuildContext context) {
    return Text(items.join(','));
  }
}