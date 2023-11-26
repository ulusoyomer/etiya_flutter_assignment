//
//  Generated code. Do not modify.
//  source: products.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use productDescriptor instead')
const Product$json = {
  '1': 'Product',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 4, '4': 1, '5': 2, '10': 'price'},
    {'1': 'category', '3': 5, '4': 1, '5': 9, '10': 'category'},
    {'1': 'image', '3': 6, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode(
    'CgdQcm9kdWN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaX'
    'B0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgVwcmljZRgEIAEoAlIFcHJpY2USGgoIY2F0ZWdv'
    'cnkYBSABKAlSCGNhdGVnb3J5EhQKBWltYWdlGAYgASgJUgVpbWFnZQ==');

@$core.Deprecated('Use productListDescriptor instead')
const ProductList$json = {
  '1': 'ProductList',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.products.Product', '10': 'products'},
  ],
};

/// Descriptor for `ProductList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productListDescriptor = $convert.base64Decode(
    'CgtQcm9kdWN0TGlzdBItCghwcm9kdWN0cxgBIAMoCzIRLnByb2R1Y3RzLlByb2R1Y3RSCHByb2'
    'R1Y3Rz');

@$core.Deprecated('Use productListRequestDescriptor instead')
const ProductListRequest$json = {
  '1': 'ProductListRequest',
};

/// Descriptor for `ProductListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productListRequestDescriptor = $convert.base64Decode(
    'ChJQcm9kdWN0TGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use wishlistDescriptor instead')
const Wishlist$json = {
  '1': 'Wishlist',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.products.Product', '10': 'products'},
  ],
};

/// Descriptor for `Wishlist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wishlistDescriptor = $convert.base64Decode(
    'CghXaXNobGlzdBItCghwcm9kdWN0cxgBIAMoCzIRLnByb2R1Y3RzLlByb2R1Y3RSCHByb2R1Y3'
    'Rz');

@$core.Deprecated('Use wishlistRequestDescriptor instead')
const WishlistRequest$json = {
  '1': 'WishlistRequest',
};

/// Descriptor for `WishlistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wishlistRequestDescriptor = $convert.base64Decode(
    'Cg9XaXNobGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use addToWishlistRequestDescriptor instead')
const AddToWishlistRequest$json = {
  '1': 'AddToWishlistRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `AddToWishlistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addToWishlistRequestDescriptor = $convert.base64Decode(
    'ChRBZGRUb1dpc2hsaXN0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use addToWishlistResponseDescriptor instead')
const AddToWishlistResponse$json = {
  '1': 'AddToWishlistResponse',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.products.Product', '10': 'products'},
    {'1': 'isExist', '3': 2, '4': 1, '5': 8, '10': 'isExist'},
  ],
};

/// Descriptor for `AddToWishlistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addToWishlistResponseDescriptor = $convert.base64Decode(
    'ChVBZGRUb1dpc2hsaXN0UmVzcG9uc2USLQoIcHJvZHVjdHMYASADKAsyES5wcm9kdWN0cy5Qcm'
    '9kdWN0Ughwcm9kdWN0cxIYCgdpc0V4aXN0GAIgASgIUgdpc0V4aXN0');

@$core.Deprecated('Use removeFromWishlistRequestDescriptor instead')
const RemoveFromWishlistRequest$json = {
  '1': 'RemoveFromWishlistRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RemoveFromWishlistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFromWishlistRequestDescriptor = $convert.base64Decode(
    'ChlSZW1vdmVGcm9tV2lzaGxpc3RSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use removeFromWishlistResponseDescriptor instead')
const RemoveFromWishlistResponse$json = {
  '1': 'RemoveFromWishlistResponse',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.products.Product', '10': 'products'},
    {'1': 'isExist', '3': 2, '4': 1, '5': 8, '10': 'isExist'},
  ],
};

/// Descriptor for `RemoveFromWishlistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFromWishlistResponseDescriptor = $convert.base64Decode(
    'ChpSZW1vdmVGcm9tV2lzaGxpc3RSZXNwb25zZRItCghwcm9kdWN0cxgBIAMoCzIRLnByb2R1Y3'
    'RzLlByb2R1Y3RSCHByb2R1Y3RzEhgKB2lzRXhpc3QYAiABKAhSB2lzRXhpc3Q=');

@$core.Deprecated('Use checkConnectionRequestDescriptor instead')
const CheckConnectionRequest$json = {
  '1': 'CheckConnectionRequest',
};

/// Descriptor for `CheckConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkConnectionRequestDescriptor = $convert.base64Decode(
    'ChZDaGVja0Nvbm5lY3Rpb25SZXF1ZXN0');

@$core.Deprecated('Use checkConnectionResponseDescriptor instead')
const CheckConnectionResponse$json = {
  '1': 'CheckConnectionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CheckConnectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkConnectionResponseDescriptor = $convert.base64Decode(
    'ChdDaGVja0Nvbm5lY3Rpb25SZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

