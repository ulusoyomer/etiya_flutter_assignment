part of 'wishlist_bloc.dart';

sealed class WishlistState extends Equatable {
  const WishlistState();
  
  @override
  List<Object> get props => [];
}

final class WishlistInitial extends WishlistState {}


final class WishProductsLoading extends WishlistState {
  const WishProductsLoading();
}

final class WishProductsLoaded extends WishlistState {
  final List<ProductEntity> products;
  const WishProductsLoaded({required this.products}) : super();

  @override
  List<Object> get props => [products];
}

final class AddToWishListLoaded extends WishlistState {
  final List<ProductEntity> products;
  const AddToWishListLoaded({required this.products}) : super();

  @override
  List<Object> get props => [products];
}

final class WishListError extends WishlistState {
  final Failure failure;
  WishListError({required this.failure}) {
    print(failure.message);
  }

  @override
  List<Object> get props => [failure];
}