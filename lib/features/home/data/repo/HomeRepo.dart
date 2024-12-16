import 'package:bookly_bloc/core/errors/Failuer.dart';
import 'package:bookly_bloc/features/home/data/models/productmodel/productmodel.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<Productmodel>>> fetchBestSellerProducts();
  Future<Either<Failure, List<Productmodel>>> fetchFeatureProducts();
}
