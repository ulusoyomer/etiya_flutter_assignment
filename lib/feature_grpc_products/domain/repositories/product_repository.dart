import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/abstracts/data_source/data_source.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';

abstract class ProductRepository {
  late final DataSource dataSource;
  ProductRepository({required this.dataSource});

  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure,List<ProductEntity>>> getWishList();
  Future<Either<Failure,List<ProductEntity>>> addToWishList({required String id});
  Future<Either<Failure,List<ProductEntity>>> removeFromWishList({required String id});
}