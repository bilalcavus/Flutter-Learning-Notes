import 'package:flutter/material.dart';
import 'package:learning_flutter/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(imageUrl: imageUrl),
          _CustomCard(imageUrl: imageUrl),
          _CustomCard(imageUrl: imageUrl),
          _CustomCard(imageUrl: imageUrl),
          
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            title: const RandomImage(),
            dense: true,
            onTap: () {},
            subtitle: Text('How do you use your card'),
            minVerticalPadding: 0,
            leading: Container(height: 200, width: 30, alignment: Alignment.topCenter, child: const Icon(Icons.money)),
            trailing: const SizedBox(width: 20, child: Icon(Icons.chevron_right))),
      ),
    );
  }
}

