part of 'featured_product_cubit.dart';

sealed class FeaturedProductState extends Equatable {
  const FeaturedProductState();

  @override
  List<Object> get props => [];
}

final class FeaturedProductInitial extends FeaturedProductState {}
final class FeaturedProductLoading extends FeaturedProductState {}
final class FeaturedProductFailuir extends FeaturedProductState {
  final String errorMessage;
  const FeaturedProductFailuir(this.errorMessage); 
}
final class FeaturedProductSuccess extends FeaturedProductState {
final List<Productmodel> products;
const FeaturedProductSuccess(this.products);

}
