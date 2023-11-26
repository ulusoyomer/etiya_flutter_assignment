import 'package:flutter/material.dart';
import 'package:view_product_detail/model/product.dart';

class ProductDetail extends StatelessWidget {
	final Product product;
   const ProductDetail({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
	 return Scaffold(
		 appBar: AppBar(
			 title: Text(product.name),
		 ),
		 body: Center(
			 child: Column(
				 children: <Widget>[
					Image.network(product.imageUrl, fit: BoxFit.cover,),
					 Text(
						 product.name,
						 style: Theme.of(context).textTheme.headline3,
					 ),
					 Text(
						 product.description,
						 style: Theme.of(context).textTheme.headline4,
					 ),
					 Text(
						"${product.price} \$",
						 style: Theme.of(context).textTheme.headline4,
					 ),
				 ],
			 ),
		 ),
	 );
  }
}