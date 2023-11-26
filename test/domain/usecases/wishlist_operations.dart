import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/data_source/remote_grpc_data_source.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/models/product_model.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/repositories/product_repository.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/wishlist_operations.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

	final WishListOperations getProducts = WishListOperations(
		productRepository: ProductRepositoryImplements(dataSource: RemoteGrpcDataSource()),
	);

	test('GetWishList Test', () async {
    expect(await getProducts.getWishList(), isA<Right<Failure, List<ProductModel>>>());
  });

  test('AddToWishList Test', () async {
    expect(await getProducts.addToWishList(id: '1'),
        isA<Right<Failure, List<ProductModel>>>());
  });

  test('RemoveToWishList Test', () async {
    expect(await getProducts.removeFromWishList(id: '1'),
        isA<Right<Failure, List<ProductModel>>>());
  });
}