import 'package:bookly_bloc/core/utils/api_service.dart';
import 'package:bookly_bloc/features/home/data/repo/Home_rebo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void setup() {
  gitIt.registerSingleton<ApiService>(ApiService(Dio()));
    gitIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    gitIt.get<ApiService>(),
  ));
 
}
