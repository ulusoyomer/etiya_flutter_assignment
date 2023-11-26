import 'package:dartz/dartz.dart';
import 'package:etiya_flutter_assignment/core/src/proto_generated/products.pb.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/data_source/remote_grpc_data_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
	final RemoteGrpcDataSource remoteGrpcDataSource = RemoteGrpcDataSource();
	test('GetProduc Test', () {
		expect(remoteGrpcDataSource.getProducts(), isA<Future<List<Product>>>());
	});

	test('GetWishList Test', () {
		expect(remoteGrpcDataSource.getWishList(), isA<Future<List<Product>>>());
	});

	test('AddToWishList Test', () {
		expect(remoteGrpcDataSource.addToWishList('1'), isA<Future<Tuple2<List<Product>,bool>>>());
	});

	test('RemoveFromWishList Test', () {
		expect(remoteGrpcDataSource.removeFromWishList('1'), isA<Future<Tuple2<List<Product>,bool>>>());
	});
}