import 'package:bookly_bloc/core/assets.dart';
import 'package:flutter/material.dart';

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
    animationController = AnimationController(
      duration: Duration(seconds: 3), vsync: this,    );
      slidingAnimation = Tween<Offset>(
        begin: const Offset(0, 1), end: Offset.zero)
      .animate(animationController);
slidingAnimation.addListener(() {
  setState(() {
    
  });
});

  }
    @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo), 
      const SizedBox(
        height: 20,
      ),
    SlideTransition(
      position: slidingAnimation,
      child: const Text('01021425996',
      textAlign: TextAlign.center,
      ),
    )
      
      ],
    );
  }
}
