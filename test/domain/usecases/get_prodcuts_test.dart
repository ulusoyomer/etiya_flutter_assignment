import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/data_source/remote_grpc_data_source.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/models/product_model.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/repositories/product_repository.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/get_procuts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final GetProductList getProducts = GetProductList(
      productRepository:
          ProductRepositoryImplements(dataSource: RemoteGrpcDataSource()));

  test('GetProducts Test', () async {
    expect(await getProducts.getProducts(), isA<Right<Failure, List<ProductModel>>>());
  });

}
