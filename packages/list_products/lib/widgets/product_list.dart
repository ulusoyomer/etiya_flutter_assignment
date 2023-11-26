import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:list_products/model/product.dart';
part 'product_list_list_tile.dart';

class ProductList extends StatelessWidget {
  final int itemCount;
  final List<Product> products;
  final Function? onDelete;
  final Function onTap;
  const ProductList(
      {super.key,
      required this.itemCount,
      required this.products,
      required this.onDelete,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) => ProductListListTile(
			key: Key("productListListTile${index}"),
        index: index,
        product: products[index],
        onDelete: onDelete,
        onTap: onTap,
      ),
    );
  }
}
