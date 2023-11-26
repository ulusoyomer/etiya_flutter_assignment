part of '../add_product_screen.dart';

mixin AddProductScreenMixin {
  late List<ProductEntity> wishList;
  
  void onAddProduct(BuildContext context, Product product) {
    if (isProductInWishList(product)) {
      printToastMessage(
          message: "Product already added to wish list", color: Colors.red);
      return;
    }
    context.read<WishlistBloc>().add(AddToWishList(id: product.id.toString()));
  }

  bool isProductInWishList(Product product) {
    return wishList.any((element) => element.id == product.id.toString());
  }
}
