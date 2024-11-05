import 'dart:async';
import 'package:cobasaja/app/modules/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState(){
    super.initState();
    startTimer();
  }

  void startTimer() {
    var duration = const Duration( seconds: 5);
    Timer(duration, () {
      Get.off(() => const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child :Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/icon.png",
              height: 96,
              width: 252,),
            ],
          ))
    ));
  }
}