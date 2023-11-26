import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/repositories/product_repository.dart';

class GetProductList {

	final ProductRepository productRepository;

	GetProductList({required this.productRepository});

	Future<Either<Failure, List<ProductEntity>>> getProducts() async {
		return await productRepository.getProducts();
	}

}