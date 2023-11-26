part of '../home_screen.dart';

mixin HomeScreenMixin {
  void onTap(BuildContext context, Product product) {
	final product_detail.Product detail_product = changeListProductToProductDetailProduct(product);
    Navigator.pushNamed(context, '/product_detail', arguments: detail_product);
  }

  void onDelete(BuildContext context, Product product) {
    context
        .read<WishlistBloc>()
        .add(RemoveFromWishList(id: product.id.toString()));
  }
}
