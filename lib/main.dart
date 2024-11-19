import 'package:bookly_bloc/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentaionLayer/views/SplashViwe.dart';

void main() {
  runApp(const ReadApp());
}

class ReadApp extends StatelessWidget {
  const ReadApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashViwe(),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 240, 215, 170),
      ),
    ); 
  }
} 
