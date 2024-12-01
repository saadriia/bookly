import 'package:bookly_bloc/features/home/data/presentation/views/home_view.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/item_details.dart';
import 'package:bookly_bloc/features/splash/presentaionLayer/views/SplashViwe.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashViwe(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/ItemsDetails',
      builder: (context, state) => const ItemDetails(),
    ),
  ],
);
}