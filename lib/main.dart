import 'package:bookly_bloc/constance.dart';
import 'package:bookly_bloc/core/utils/Routers.dart';
import 'package:bookly_bloc/core/utils/Service_locator/Service_Locator.dart';
import 'package:bookly_bloc/core/utils/api_service.dart';
import 'package:bookly_bloc/features/home/data/presentation/manager/featured_product_cubit/featured_product_cubit.dart';
import 'package:bookly_bloc/features/home/data/presentation/manager/news_product_cubit/news_product_cubit.dart';
import 'package:bookly_bloc/features/home/data/repo/Home_rebo_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentaionLayer/views/SplashViwe.dart';

void main() {
  setup();
  runApp(const ReadApp());
}

class ReadApp extends StatelessWidget {
  const ReadApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedProductCubit(
            gitIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsProductCubit(
            gitIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.cairoTextTheme(
            ThemeData.light().textTheme,
          ),
        ),
      ),
    );
  }
}
