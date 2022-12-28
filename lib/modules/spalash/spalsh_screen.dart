import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:resturant/modules/tips/get_started.dart';
import 'package:resturant/modules/tips/onboarding/onboarding.dart';


class SpalashScreen extends StatelessWidget {
  const SpalashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      duration:1500 ,
      splash: Icon(Icons.food_bank,size: 100.0,),
      nextScreen: GetStarted(),
      splashTransition: SplashTransition.scaleTransition,
      //pageTransitionType: PageTransitionType.scale,
    );
  }
}
