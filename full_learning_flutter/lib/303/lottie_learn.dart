import 'package:flutter/material.dart';
import 'package:learning_flutter/product/constant/duration_items.dart';
import 'package:learning_flutter/product/constant/lottie_items.dart';
import 'package:learning_flutter/product/global/theme_notifier.dart';
import 'package:learning_flutter/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}


class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
          onTap: () async {
          await controller.animateTo(isLight ? 0.5 : 1);
           // controller.animateTo(0.5);
          isLight = !isLight;
          Future.microtask((){ // ekranda bir iş oluyor ve bitmesini istiyoruz bittikten sonra framein tetiklenmesini istiyorsak kullanırız
            context.read<ThemeNotifier>().changeTheme();
          });
          },
          child: Lottie.asset(LottieItems.themeChange.lottiePath, 
          repeat: false,
          controller: controller
          ))
        ],
      ),
      body: const LoadingLottie()
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    super.key,
  });
 final astronoutLottie = 'https://lottie.host/efdfcdf3-24e0-4847-bb93-48afa3bd1cd9/ThwbNsrfSs.json';
 final loadingLottie = 'https://lottie.host/ade9aeca-32e6-4454-a903-a62488c24031/Rlgm9YVKET.json';
  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.network(astronoutLottie));
  }
}

