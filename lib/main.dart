import 'package:bookly_bloc/constance.dart';
import 'package:bookly_bloc/core/utils/Routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentaionLayer/views/SplashViwe.dart';

void main() {
  runApp(const ReadApp());
}

class ReadApp extends StatelessWidget {
  const ReadApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.cairoTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
    ); 
  }
} 

