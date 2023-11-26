import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/models/product_model.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';

class ProductRepositoryImplements extends ProductRepository {


  ProductRepositoryImplements({required super.dataSource});

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final response = await dataSource.getProducts();
      final list = response
          .map((product) => ProductModel.fromObjectList(product))
          .toList();
      return Right(list);
    } catch (e) {
		print(e.toString());
      return Left(GetIt.I.get<ConnectionFailure>());
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getWishList() async {
    try {
      final response = await dataSource.getWishList();
      final list = response
          .map((product) => ProductModel.fromObjectList(product))
          .toList();
      return Right(list);
    } catch (e) {
		print(e.toString());
      return Left(GetIt.I.get<ConnectionFailure>());
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> addToWishList(
      {required String id}) async {
    try {
		//response.value2 is a bool value that indicates whether the product is already in the wish list.
      final response = await dataSource.addToWishList(id);
      if (response.value2) {
        return Left(GetIt.I.get<AlreadyExistFailure>());
      }
      final list = response.value1
          .map((product) => ProductModel.fromObjectList(product))
          .toList();
      return Right(list);
    } catch (e) {
      print(e.toString());
      return Left(GetIt.I.get<ConnectionFailure>());
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> removeFromWishList(
      {required String id}) async {
    try {
      final response = await dataSource.removeFromWishList(id);
		//response.value2 is a bool value that indicates whether the product is not in the wish list.
      if (!response.value2) {
        return Left(GetIt.I.get<InValidProductId>());
      }
      final list = response.value1
          .map((product) => ProductModel.fromObjectList(product))
          .toList();
      return Right(list);
    } catch (e) {
		print(e.toString());
      return Left(GetIt.I.get<ConnectionFailure>());
    }
  }
}
