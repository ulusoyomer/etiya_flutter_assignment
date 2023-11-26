import 'package:flutter/material.dart';
import 'package:view_product_detail/widgets/product_detail.dart';
import 'package:view_product_detail/model/product.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
	final product = ModalRoute.of(context)!.settings.arguments as Product;
	 return ProductDetail(product: product);
  }
}