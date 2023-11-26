import 'package:etiya_flutter_assignment/core/src/proto_generated/products.pbgrpc.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    String? id,
    String? name,
    String? description,
    double? price,
    String? category,
    String? image,
  }) : super(
            id: id ?? '',
            name: name ?? '',
            description: description ?? '',
            price: price ?? 0.0,
            category: category ?? '',
            image: image ?? '');

  factory ProductModel.fromObjectList(Object object) {
    if (object is Product) { //Product is from proto_generated/products.pbgrpc.dart
      return ProductModel(
        id: object.id,
        name: object.name,
        description: object.description,
        price: object.price,
        category: object.category,
        image: object.image,
      );
    }
	 
    throw Exception('Object is not a valid type');
  }
}
