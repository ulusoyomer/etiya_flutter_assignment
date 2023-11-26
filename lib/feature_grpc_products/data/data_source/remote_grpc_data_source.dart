import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/abstracts/data_source/data_source.dart';

import '../../../core/src/proto_generated/products.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class RemoteGrpcDataSource extends DataSource {
  RemoteGrpcDataSource() {
    super.client = ProductServiceClient(
      ClientChannel(
        host,
        port: 50051,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
    );
    super.productListRequest = ProductListRequest();
    super.wishlistRequest = WishlistRequest();
    super.addToWishlistRequest = AddToWishlistRequest();
    super.removeFromWishlistRequest = RemoveFromWishlistRequest();
    super.checkConnectionRequest = CheckConnectionRequest();
  }

  @override
  Future<List<Product>> getProducts() async {
    final response = await client.getProducts(productListRequest);
    return response.products;
  }

  @override
  Future<List<Product>> getWishList() async {
    final response = await client.getWishList(wishlistRequest);
    return response.products;
  }

  @override
  Future<Tuple2<List<Product>,bool>> addToWishList(String id) async {
    addToWishlistRequest.id = id;
    final response = await client.addToWishlist(addToWishlistRequest);
    return Tuple2(response.products, response.isExist);
  }

  @override
  Future<Tuple2<List<Product>,bool>> removeFromWishList(String id) async {
    removeFromWishlistRequest.id = id;
    final response = await client.removeFromWishlist(removeFromWishlistRequest);
    return Tuple2(response.products, response.isExist);
  }

	//This method is not used in the project.
  @override
  Future<bool> checkConnection() async {
    final request = CheckConnectionRequest();
    final response = await client.checkConnection(request);
    return response.success;
  }
}
