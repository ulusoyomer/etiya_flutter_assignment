//
//  Generated code. Do not modify.
//  source: products.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'products.pb.dart' as $0;

export 'products.pb.dart';

@$pb.GrpcServiceName('products.ProductService')
class ProductServiceClient extends $grpc.Client {
  static final _$checkConnection = $grpc.ClientMethod<$0.CheckConnectionRequest, $0.CheckConnectionResponse>(
      '/products.ProductService/CheckConnection',
      ($0.CheckConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckConnectionResponse.fromBuffer(value));
  static final _$getProducts = $grpc.ClientMethod<$0.ProductListRequest, $0.ProductList>(
      '/products.ProductService/GetProducts',
      ($0.ProductListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProductList.fromBuffer(value));
  static final _$getWishList = $grpc.ClientMethod<$0.WishlistRequest, $0.Wishlist>(
      '/products.ProductService/GetWishList',
      ($0.WishlistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Wishlist.fromBuffer(value));
  static final _$addToWishlist = $grpc.ClientMethod<$0.AddToWishlistRequest, $0.AddToWishlistResponse>(
      '/products.ProductService/AddToWishlist',
      ($0.AddToWishlistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddToWishlistResponse.fromBuffer(value));
  static final _$removeFromWishlist = $grpc.ClientMethod<$0.RemoveFromWishlistRequest, $0.RemoveFromWishlistResponse>(
      '/products.ProductService/RemoveFromWishlist',
      ($0.RemoveFromWishlistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveFromWishlistResponse.fromBuffer(value));

  ProductServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CheckConnectionResponse> checkConnection($0.CheckConnectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkConnection, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProductList> getProducts($0.ProductListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProducts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Wishlist> getWishList($0.WishlistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWishList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddToWishlistResponse> addToWishlist($0.AddToWishlistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addToWishlist, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveFromWishlistResponse> removeFromWishlist($0.RemoveFromWishlistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFromWishlist, request, options: options);
  }
}

@$pb.GrpcServiceName('products.ProductService')
abstract class ProductServiceBase extends $grpc.Service {
  $core.String get $name => 'products.ProductService';

  ProductServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CheckConnectionRequest, $0.CheckConnectionResponse>(
        'CheckConnection',
        checkConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckConnectionRequest.fromBuffer(value),
        ($0.CheckConnectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProductListRequest, $0.ProductList>(
        'GetProducts',
        getProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProductListRequest.fromBuffer(value),
        ($0.ProductList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WishlistRequest, $0.Wishlist>(
        'GetWishList',
        getWishList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WishlistRequest.fromBuffer(value),
        ($0.Wishlist value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddToWishlistRequest, $0.AddToWishlistResponse>(
        'AddToWishlist',
        addToWishlist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddToWishlistRequest.fromBuffer(value),
        ($0.AddToWishlistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveFromWishlistRequest, $0.RemoveFromWishlistResponse>(
        'RemoveFromWishlist',
        removeFromWishlist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveFromWishlistRequest.fromBuffer(value),
        ($0.RemoveFromWishlistResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CheckConnectionResponse> checkConnection_Pre($grpc.ServiceCall call, $async.Future<$0.CheckConnectionRequest> request) async {
    return checkConnection(call, await request);
  }

  $async.Future<$0.ProductList> getProducts_Pre($grpc.ServiceCall call, $async.Future<$0.ProductListRequest> request) async {
    return getProducts(call, await request);
  }

  $async.Future<$0.Wishlist> getWishList_Pre($grpc.ServiceCall call, $async.Future<$0.WishlistRequest> request) async {
    return getWishList(call, await request);
  }

  $async.Future<$0.AddToWishlistResponse> addToWishlist_Pre($grpc.ServiceCall call, $async.Future<$0.AddToWishlistRequest> request) async {
    return addToWishlist(call, await request);
  }

  $async.Future<$0.RemoveFromWishlistResponse> removeFromWishlist_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveFromWishlistRequest> request) async {
    return removeFromWishlist(call, await request);
  }

  $async.Future<$0.CheckConnectionResponse> checkConnection($grpc.ServiceCall call, $0.CheckConnectionRequest request);
  $async.Future<$0.ProductList> getProducts($grpc.ServiceCall call, $0.ProductListRequest request);
  $async.Future<$0.Wishlist> getWishList($grpc.ServiceCall call, $0.WishlistRequest request);
  $async.Future<$0.AddToWishlistResponse> addToWishlist($grpc.ServiceCall call, $0.AddToWishlistRequest request);
  $async.Future<$0.RemoveFromWishlistResponse> removeFromWishlist($grpc.ServiceCall call, $0.RemoveFromWishlistRequest request);
}
