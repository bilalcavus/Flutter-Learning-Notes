import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({super.key});

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHight.value(),
          color: Colors.green,
        ),
      ),

    );
  }
}


enum WidgetSizes{
  normalCardHight,
  circleProfileWidth
}

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
    
  }
}