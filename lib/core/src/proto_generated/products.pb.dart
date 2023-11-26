//
//  Generated code. Do not modify.
//  source: products.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Product extends $pb.GeneratedMessage {
  factory Product({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.double? price,
    $core.String? category,
    $core.String? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (category != null) {
      $result.category = category;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  Product._() : super();
  factory Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Product', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 'category')
    ..aOS(6, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Product clone() => Product()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Product copyWith(void Function(Product) updates) => super.copyWith((message) => updates(message as Product)) as Product;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Product create() => Product._();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  @$core.pragma('dart2js:noInline')
  static Product getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Product>(create);
  static Product? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get category => $_getSZ(4);
  @$pb.TagNumber(5)
  set category($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);
}

class ProductList extends $pb.GeneratedMessage {
  factory ProductList({
    $core.Iterable<Product>? products,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    return $result;
  }
  ProductList._() : super();
  factory ProductList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductList', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductList clone() => ProductList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductList copyWith(void Function(ProductList) updates) => super.copyWith((message) => updates(message as ProductList)) as ProductList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductList create() => ProductList._();
  ProductList createEmptyInstance() => create();
  static $pb.PbList<ProductList> createRepeated() => $pb.PbList<ProductList>();
  @$core.pragma('dart2js:noInline')
  static ProductList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductList>(create);
  static ProductList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);
}

class ProductListRequest extends $pb.GeneratedMessage {
  factory ProductListRequest() => create();
  ProductListRequest._() : super();
  factory ProductListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductListRequest clone() => ProductListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductListRequest copyWith(void Function(ProductListRequest) updates) => super.copyWith((message) => updates(message as ProductListRequest)) as ProductListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductListRequest create() => ProductListRequest._();
  ProductListRequest createEmptyInstance() => create();
  static $pb.PbList<ProductListRequest> createRepeated() => $pb.PbList<ProductListRequest>();
  @$core.pragma('dart2js:noInline')
  static ProductListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductListRequest>(create);
  static ProductListRequest? _defaultInstance;
}

class Wishlist extends $pb.GeneratedMessage {
  factory Wishlist({
    $core.Iterable<Product>? products,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    return $result;
  }
  Wishlist._() : super();
  factory Wishlist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Wishlist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Wishlist', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Wishlist clone() => Wishlist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Wishlist copyWith(void Function(Wishlist) updates) => super.copyWith((message) => updates(message as Wishlist)) as Wishlist;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Wishlist create() => Wishlist._();
  Wishlist createEmptyInstance() => create();
  static $pb.PbList<Wishlist> createRepeated() => $pb.PbList<Wishlist>();
  @$core.pragma('dart2js:noInline')
  static Wishlist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Wishlist>(create);
  static Wishlist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);
}

class WishlistRequest extends $pb.GeneratedMessage {
  factory WishlistRequest() => create();
  WishlistRequest._() : super();
  factory WishlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WishlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WishlistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WishlistRequest clone() => WishlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WishlistRequest copyWith(void Function(WishlistRequest) updates) => super.copyWith((message) => updates(message as WishlistRequest)) as WishlistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WishlistRequest create() => WishlistRequest._();
  WishlistRequest createEmptyInstance() => create();
  static $pb.PbList<WishlistRequest> createRepeated() => $pb.PbList<WishlistRequest>();
  @$core.pragma('dart2js:noInline')
  static WishlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WishlistRequest>(create);
  static WishlistRequest? _defaultInstance;
}

class AddToWishlistRequest extends $pb.GeneratedMessage {
  factory AddToWishlistRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  AddToWishlistRequest._() : super();
  factory AddToWishlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddToWishlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddToWishlistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddToWishlistRequest clone() => AddToWishlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddToWishlistRequest copyWith(void Function(AddToWishlistRequest) updates) => super.copyWith((message) => updates(message as AddToWishlistRequest)) as AddToWishlistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddToWishlistRequest create() => AddToWishlistRequest._();
  AddToWishlistRequest createEmptyInstance() => create();
  static $pb.PbList<AddToWishlistRequest> createRepeated() => $pb.PbList<AddToWishlistRequest>();
  @$core.pragma('dart2js:noInline')
  static AddToWishlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddToWishlistRequest>(create);
  static AddToWishlistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AddToWishlistResponse extends $pb.GeneratedMessage {
  factory AddToWishlistResponse({
    $core.Iterable<Product>? products,
    $core.bool? isExist,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    if (isExist != null) {
      $result.isExist = isExist;
    }
    return $result;
  }
  AddToWishlistResponse._() : super();
  factory AddToWishlistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddToWishlistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddToWishlistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..aOB(2, _omitFieldNames ? '' : 'isExist', protoName: 'isExist')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddToWishlistResponse clone() => AddToWishlistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddToWishlistResponse copyWith(void Function(AddToWishlistResponse) updates) => super.copyWith((message) => updates(message as AddToWishlistResponse)) as AddToWishlistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddToWishlistResponse create() => AddToWishlistResponse._();
  AddToWishlistResponse createEmptyInstance() => create();
  static $pb.PbList<AddToWishlistResponse> createRepeated() => $pb.PbList<AddToWishlistResponse>();
  @$core.pragma('dart2js:noInline')
  static AddToWishlistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddToWishlistResponse>(create);
  static AddToWishlistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isExist => $_getBF(1);
  @$pb.TagNumber(2)
  set isExist($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsExist() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsExist() => clearField(2);
}

class RemoveFromWishlistRequest extends $pb.GeneratedMessage {
  factory RemoveFromWishlistRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  RemoveFromWishlistRequest._() : super();
  factory RemoveFromWishlistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFromWishlistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveFromWishlistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFromWishlistRequest clone() => RemoveFromWishlistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFromWishlistRequest copyWith(void Function(RemoveFromWishlistRequest) updates) => super.copyWith((message) => updates(message as RemoveFromWishlistRequest)) as RemoveFromWishlistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveFromWishlistRequest create() => RemoveFromWishlistRequest._();
  RemoveFromWishlistRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveFromWishlistRequest> createRepeated() => $pb.PbList<RemoveFromWishlistRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveFromWishlistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveFromWishlistRequest>(create);
  static RemoveFromWishlistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RemoveFromWishlistResponse extends $pb.GeneratedMessage {
  factory RemoveFromWishlistResponse({
    $core.Iterable<Product>? products,
    $core.bool? isExist,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    if (isExist != null) {
      $result.isExist = isExist;
    }
    return $result;
  }
  RemoveFromWishlistResponse._() : super();
  factory RemoveFromWishlistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveFromWishlistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveFromWishlistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..aOB(2, _omitFieldNames ? '' : 'isExist', protoName: 'isExist')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveFromWishlistResponse clone() => RemoveFromWishlistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveFromWishlistResponse copyWith(void Function(RemoveFromWishlistResponse) updates) => super.copyWith((message) => updates(message as RemoveFromWishlistResponse)) as RemoveFromWishlistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveFromWishlistResponse create() => RemoveFromWishlistResponse._();
  RemoveFromWishlistResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveFromWishlistResponse> createRepeated() => $pb.PbList<RemoveFromWishlistResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveFromWishlistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveFromWishlistResponse>(create);
  static RemoveFromWishlistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isExist => $_getBF(1);
  @$pb.TagNumber(2)
  set isExist($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsExist() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsExist() => clearField(2);
}

class CheckConnectionRequest extends $pb.GeneratedMessage {
  factory CheckConnectionRequest() => create();
  CheckConnectionRequest._() : super();
  factory CheckConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckConnectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckConnectionRequest clone() => CheckConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckConnectionRequest copyWith(void Function(CheckConnectionRequest) updates) => super.copyWith((message) => updates(message as CheckConnectionRequest)) as CheckConnectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckConnectionRequest create() => CheckConnectionRequest._();
  CheckConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<CheckConnectionRequest> createRepeated() => $pb.PbList<CheckConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckConnectionRequest>(create);
  static CheckConnectionRequest? _defaultInstance;
}

class CheckConnectionResponse extends $pb.GeneratedMessage {
  factory CheckConnectionResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  CheckConnectionResponse._() : super();
  factory CheckConnectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckConnectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckConnectionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckConnectionResponse clone() => CheckConnectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckConnectionResponse copyWith(void Function(CheckConnectionResponse) updates) => super.copyWith((message) => updates(message as CheckConnectionResponse)) as CheckConnectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckConnectionResponse create() => CheckConnectionResponse._();
  CheckConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<CheckConnectionResponse> createRepeated() => $pb.PbList<CheckConnectionResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckConnectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckConnectionResponse>(create);
  static CheckConnectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
