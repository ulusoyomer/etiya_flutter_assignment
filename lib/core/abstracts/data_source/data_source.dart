import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/constant/constant.dart';

abstract class DataSource {
  late final client;
  late final productListRequest;
  late final wishlistRequest;
  late final addToWishlistRequest;
  late final removeFromWishlistRequest;
  late final checkConnectionRequest;
	final String host = BASE_URL;
  DataSource();

  Future<List<Object>> getProducts();

  Future<List<Object>> getWishList();

  Future<Tuple2<List<Object>,bool>> addToWishList(String id);

  Future<Tuple2<List<Object>,bool>> removeFromWishList(String id);

  Future<bool> checkConnection();

}
