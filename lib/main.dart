import 'package:cobasaja/app/modules/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('id', 'ID'),
      home: SplashScreenView(),
    )
  );
}