import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/module/home_binding.dart';
import 'package:weather_app/module/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "weather app with getx",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
