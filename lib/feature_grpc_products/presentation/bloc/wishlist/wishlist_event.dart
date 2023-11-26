part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();
  @override
  List<Object> get props => [];
}

final class GetWishList extends WishlistEvent {

	  const GetWishList();
}

final class AddToWishList extends WishlistEvent {
	final String id;
	  const AddToWishList({required this.id});
}

final class RemoveFromWishList extends WishlistEvent {
	final String id;
	  const RemoveFromWishList({required this.id});
}
