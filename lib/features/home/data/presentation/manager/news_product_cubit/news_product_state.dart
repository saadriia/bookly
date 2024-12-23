part of 'news_product_cubit.dart';

sealed class NewsProductState extends Equatable {
  const NewsProductState();

  @override
  List<Object> get props => [];
}

final class NewsProductInitial extends NewsProductState {}
final class NewsProductLoading extends NewsProductState {}
final class NewsProductSuccess extends NewsProductState {
  final List<Productmodel> newsProduct;

  const NewsProductSuccess(this.newsProduct);
}
final class NewsProductFailure extends NewsProductState {
  final String errMessage;

  const NewsProductFailure(this.errMessage);
} 