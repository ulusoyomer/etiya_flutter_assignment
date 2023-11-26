import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:list_products/list_products.dart';
import 'package:view_product_detail/model/product.dart' as product_detail;

//!Package: list_products is a package I created to list products. It has a model called Product within itself.
List<Product> changeProductEntityListToProductList(
      List<ProductEntity> products) {
    return products
        .map((e) => Product( //!Product is from list_products package
            id: int.parse(e.id),
            name: e.name,
            description: e.description,
            price: e.price,
            imageUrl: e.image))
        .toList();
  }

//!Package: view_product_detail is a package I created to view product detail. It has a model called Product within itself.
product_detail.Product changeListProductToProductDetailProduct(
		Product product) {
	 return product_detail.Product( //!Product is from view_product_detail package
		  id: product.id,
		  name: product.name,
		  description: product.description,
		  price: product.price,
		  imageUrl: product.imageUrl);
  }