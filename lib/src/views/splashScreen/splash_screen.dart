import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nickers/src/const/const_colors.dart';
import 'package:nickers/src/const/images.dart';
import 'package:nickers/src/views/onboardScreens/onboard_screen_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnboardScreenOne()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Center(child: Image.asset(whiteLogo)));
  }
}
