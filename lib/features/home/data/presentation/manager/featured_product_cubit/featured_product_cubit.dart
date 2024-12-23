import 'package:bloc/bloc.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/Products_action.dart';
import 'package:bookly_bloc/features/home/data/repo/HomeRepo.dart';
import 'package:equatable/equatable.dart';

import '../../../models/productmodel/productmodel.dart';

part 'featured_product_state.dart';

// كيوبيت لاستدعاء الميثود 
class FeaturedProductCubit extends Cubit<FeaturedProductState> {
  FeaturedProductCubit(this.homerepo) : super(FeaturedProductInitial());

  final Homerepo homerepo;
  Future<void> fetchfeaturedproduct() async {
    emit(FeaturedProductLoading());
    var result = await homerepo.fetchFeatureProducts();
    result.fold((failure) {
      emit(FeaturedProductFailuir(failure.errMessage));
    }, (product) {
      emit(FeaturedProductSuccess(product));
    });
  }
}
