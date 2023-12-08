import 'package:flutter/material.dart';
import 'package:sabika2/core/navigation/navigation.dart';
import 'package:sabika2/features/welcome/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      // Widget? widget;
      // bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
      // token = CacheHelper.getData(key: 'token');
      // adminOrUser = CacheHelper.getData(key: 'role');
      // if (onBoarding != null) {
      //   if ((token != null) && (adminOrUser != null)) {
      //     if (adminOrUser == 1) {
      //       widget = const SabikaLayoutAdmin();
      //     } else {
      //       widget = const SabikaLayoutUser();
      //     }
      //   } else {
      //     widget = const LoginScreen();
      //   }
      // } else {
      //   widget = const WelcomeScreen();
      // }
      navigateAndFinish(context, WelcomeScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/img.png',
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
