import 'package:flutter/material.dart';
import 'package:learning_flutter/101/image_learn.dart';
import 'package:learning_flutter/101/icon_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
 late final TabController _tabController;
 final double _notchedValue = 10;

 @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _MyTabViews.values.length, child: Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        _tabController.animateTo(_MyTabViews.home.index);
      }),

      bottomNavigationBar:  BottomAppBar(
        notchMargin: _notchedValue,
        shape: const CircularNotchedRectangle(),
        child: _myTabView(tabController: _tabController)
      ),
     
      body: _tabbarView(),
    ));
  }  

  TabBarView _tabbarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(), // sayfa kaydırmasını kapatır
      controller: _tabController,
      children:  [
      ImageLearn(),
      IconLearnView(),
      IconLearnView(),
      IconLearnView()

    ],);
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
    padding: EdgeInsets.zero,
    onTap: (int index){}, 
    unselectedLabelColor: Colors.black,
    controller: _tabController,
    tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}',)).toList() 
    );
  }
}

enum _MyTabViews {
  home,settings,favourite, profile
}


extension _MyTabViewsExtension on _MyTabViews {
  
}