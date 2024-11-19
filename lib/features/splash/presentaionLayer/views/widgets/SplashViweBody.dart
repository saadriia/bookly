import 'package:bookly_bloc/constance.dart';
import 'package:bookly_bloc/core/assets.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlideAnimation();
    navigationToHome();
  }

  void navigationToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(), transition: Transition.fadeIn, duration: ktranstionDuration);
      // Navigator.pushReplacementNamed(context, Routes.home);
    //  Get.to(() => HomeView(), transition:Transition.fade);
    });
  }

  void initSlideAnimation() {
      animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 20,
        ),
        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            '01021425996',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
