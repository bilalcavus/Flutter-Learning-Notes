import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 10),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  // ignore: unused_field
  static const EdgeInsets normalPadding = EdgeInsets.all(8.0);
  static const EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: _ColorsUtility().redColor,
          shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility.normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: _ColorsUtility().white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
