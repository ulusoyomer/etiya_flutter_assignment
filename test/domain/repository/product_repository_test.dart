import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/data_source/remote_grpc_data_source.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/models/product_model.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/repositories/product_repository.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/repositories/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
	final RemoteGrpcDataSource remoteGrpcDataSource = RemoteGrpcDataSource();
	final ProductRepository productRepository = ProductRepositoryImplements(dataSource: remoteGrpcDataSource);

	test('GetProduct Test', () async {
		expect(await productRepository.getProducts(), isA<Right<Failure, List<ProductModel>>>());
	});

	test('GetWishList Test', () async {
		expect(await productRepository.getWishList(), isA<Right<Failure, List<ProductModel>>>());
	});

	test('AddToWishList Test', () async {
		expect(await productRepository.addToWishList(id: '1'), isA<Right<Failure, List<ProductModel>>>());
	});

	test('RemoveFromWishList Test', () async {
		expect(await productRepository.removeFromWishList(id: '1'), isA<Right<Failure, List<ProductModel>>>());
	});
}