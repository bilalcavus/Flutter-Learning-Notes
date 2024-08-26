import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          textAlign: TextAlign.center,
        ),
        leading: const Icon(Icons.chevron_left),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        //actionsIconTheme: const IconThemeData(color: Colors.red),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
      body: const Column(children: []),
    );
  }
}
