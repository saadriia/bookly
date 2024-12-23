import 'package:bloc/bloc.dart';
import 'package:bookly_bloc/features/home/data/models/productmodel/productmodel.dart';
import 'package:bookly_bloc/features/home/data/repo/HomeRepo.dart';
import 'package:equatable/equatable.dart';

part 'news_product_state.dart';

class NewsProductCubit extends Cubit<NewsProductState> {
  NewsProductCubit(this.homerepo) : super(NewsProductInitial());

  
  final Homerepo homerepo;
  
  Future<void> fetchNewsProduct() async {
    emit(NewsProductLoading());
    var result = await homerepo.fetchFeatureProducts();
    result.fold((failure) {
      emit(NewsProductFailure(failure.errMessage));
    }, (product) {
      emit(NewsProductSuccess(product));
    });
  }
}
