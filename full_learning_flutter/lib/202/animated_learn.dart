import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> with TickerProviderStateMixin {
 
  @override
  void initState(){
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
   late AnimationController controller ;

  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _placeholderWidget()),
      floatingActionButton: FloatingActionButton(onPressed: (){
        changeVisible();
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      body: Column(
        children: [
          ListTile(
            title: Text('data'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.precision_manufacturing_rounded)),
          ),

          AnimatedDefaultTextStyle(
          child: Text('data'), 
          style: (_isVisible ? context.textTheme().headlineMedium : context.textTheme().titleSmall) ?? TextStyle(), 
          duration: _DurationItems.durationLow),

          AnimatedIcon(icon: AnimatedIcons.home_menu, progress: controller,
          ),
          AnimatedContainer(duration: _DurationItems.durationLow , 
          height:_isVisible ? 0 : MediaQuery.of(context).size.width  * 0.2,
          width:  MediaQuery.of(context).size.height * 0.2,
          color: Colors.blue,
          margin: const EdgeInsets.all(5),
          ),
        ],
      ),
    );
  }

  AnimatedCrossFade _placeholderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox(),
      duration: _DurationItems.durationLow,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}

//plugin 
extension BuildContextExtension on BuildContext {
  TextTheme textTheme (){
    return Theme.of(this).textTheme;
  }
}