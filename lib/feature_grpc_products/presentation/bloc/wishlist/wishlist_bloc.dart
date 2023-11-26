import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/wishlist_operations.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
	late final WishListOperations wishListOperations;
  WishlistBloc({required this.wishListOperations}) : super(WishlistInitial()) {
    on<GetWishList>(_getWishList);
	 on<AddToWishList>(_addToWishList);
	 on<RemoveFromWishList>(_removeFromWishList);
  }

  void _getWishList(GetWishList event, Emitter<WishlistState> emit) async {
    emit(const WishProductsLoading());
    final failureOrProducts = await wishListOperations.getWishList();
    failureOrProducts.fold(
      (failure) => emit(WishListError(failure: failure)),
      (products) => emit(WishProductsLoaded(products: products)),
    );
  }

	void _addToWishList(AddToWishList event, Emitter<WishlistState> emit) async {
	 emit(const WishProductsLoading());
	 final failureOrProducts = await wishListOperations.addToWishList(id: event.id);
	 failureOrProducts.fold(
		(failure) => emit(WishListError(failure: failure)),
		(products) => emit(AddToWishListLoaded(products: products)),
	 );
  }

	void _removeFromWishList(RemoveFromWishList event, Emitter<WishlistState> emit) async {
	 emit(const WishProductsLoading());
	 final failureOrProducts = await wishListOperations.removeFromWishList(id: event.id);
	 failureOrProducts.fold(
		(failure) => emit(WishListError(failure: failure)),
		(products) => emit(WishProductsLoaded(products: products)),
	 );
	}
}
