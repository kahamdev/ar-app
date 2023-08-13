import 'package:arapp/base.dart';
import 'package:arapp/result.dart';
import 'package:page_transition/page_transition.dart';
import 'package:arapp/welcome.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera/camera.dart';

class Splash extends StatelessWidget {
  const Splash();

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset("assets/image0.png"),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          )
        ],
      ),
      backgroundColor: Colors.blue,
      nextScreen: const WelcomePage(),
      splashIconSize: 250,
      duration: 5000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 3),
    );
  }
}
