import 'package:bookly_bloc/core/errors/Failuer.dart';
import 'package:bookly_bloc/core/utils/api_service.dart';
import 'package:bookly_bloc/features/home/data/models/productmodel/productmodel.dart';
import 'package:bookly_bloc/features/home/data/repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements Homerepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Productmodel>>> fetchBestSellerProducts() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');

      List<Productmodel> books = [];
      for (var item in data['items']) {
        books.add(Productmodel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFAilure.fromDioError(e));
      } else {
        return left(ServerFAilure(e.toString()));
      }
      
      
      //return left(ServerFAilure('message'));
    }
  }

  @override
  Future<Either<Failure, List<Productmodel>>> fetchFeatureProducts() {
    // TODO: implement fetchFeatureProducts
    throw UnimplementedError();
  }
}

//oop 

