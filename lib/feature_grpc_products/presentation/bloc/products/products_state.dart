part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {
  const ProductsInitial();
}

final class ProductsLoading extends ProductsState {
  const ProductsLoading();
}

final class ProductsLoaded extends ProductsState {
  final List<ProductEntity> products;
  const ProductsLoaded({required this.products}) : super();

  @override
  List<Object> get props => [products];
}

final class ProductsError extends ProductsState {
  final Failure failure;
  ProductsError({required this.failure}) {
    print(failure.message);
  }

  @override
  List<Object> get props => [failure];
}


