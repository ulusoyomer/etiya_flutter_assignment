import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/repositories/product_repository.dart';

class WishListOperations {

	final ProductRepository productRepository;

	WishListOperations({required this.productRepository});

	Future<Either<Failure, List<ProductEntity>>> getWishList() async {
		return await productRepository.getWishList();
	}

	Future<Either<Failure, List<ProductEntity>>> addToWishList({required String id}) async {
		return await productRepository.addToWishList(id: id);
	}

	Future<Either<Failure, List<ProductEntity>>> removeFromWishList({required String id}) async {
		return await productRepository.removeFromWishList(id: id);
	}

}