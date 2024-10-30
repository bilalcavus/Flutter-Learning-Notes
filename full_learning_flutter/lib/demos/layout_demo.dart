import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_flutter/core/random_image.dart';

class LayoutDemo extends StatelessWidget {
  LayoutDemo({super.key});
  final title = const Text('Login Screen');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: title,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        leading: const Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: Container(
        color: Colors.black45,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _CustomTextField(),
                      SizedBox(height: 30),
                      _CustomTextField2(),
                      SizedBox(height: 30),
                      _CustomButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    super.key,
   
  });


  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
      ),
    );
  }
}

class _CustomTextField2 extends StatelessWidget {
  const _CustomTextField2({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Define the button action here
      },
      child: const Text('Login'),
    );
  }
}
