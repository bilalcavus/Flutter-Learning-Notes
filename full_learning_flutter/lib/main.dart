// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:learning_flutter/202/alert_learn.dart';
import 'package:learning_flutter/202/cache/shared_learn_cache.dart';
import 'package:learning_flutter/202/form_learn_view.dart';
import 'package:learning_flutter/202/sheet_learn.dart';
import 'package:learning_flutter/202/theme/light_Theme.dart';
import 'package:learning_flutter/303/callback_learn.dart';
import 'package:learning_flutter/303/lottie_learn.dart';
import 'package:learning_flutter/303/navigator/navigate_home_detail_view.dart';
import 'package:learning_flutter/303/navigator/navigate_home_view.dart';
import 'package:learning_flutter/303/reqres_resources/view/reqres_view.dart';
import 'package:learning_flutter/product/constant/project_items.dart';
import 'package:learning_flutter/product/global/resources_context.dart';
import 'package:learning_flutter/product/global/theme_notifier.dart';
import 'package:learning_flutter/product/navigator/navigator_routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (_) => ResourcesContext()),
    ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier(),)
  ],
  builder: (context,child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeNotifier>().currentTheme,
      debugShowCheckedModeBanner: false,
      title: ProjectItems.projectName,

      // onUnknownRoute: (settings){
      //   return MaterialPageRoute(builder: (context){
      //     return LottieLearn();
      //   });
      // },
      // routes: NavigatorRoutes().items,
      // onGenerateRoute: (settings){
      //   if (settings.name == "/home") {
      //     return MaterialPageRoute(builder: (context){
      //       return LottieLearn();
      //     });
      //   }
      // },
      home: const LottieLearn(),
      
    );
  }
}
