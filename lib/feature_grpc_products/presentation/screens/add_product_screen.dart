import 'package:etiya_flutter_assignment/core/service/toast_message.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/bloc/products/products_bloc.dart';
import 'package:etiya_flutter_assignment/core/helpers/helpers.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/bloc/wishlist/wishlist_bloc.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/widgets/return_error.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/widgets/return_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_products/list_products.dart';

part './mixins/add_product_mixin.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen>
    with AddProductScreenMixin {
  @override
  void initState() {
    super.initState();
    final state = context.read<WishlistBloc>().state;
    if (state is WishProductsLoaded) {
      wishList = state.products;
    }
    context.read<ProductsBloc>().add(const GetProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: BlocListener<WishlistBloc, WishlistState>(
        listener: (context, state) {
          if (state is AddToWishListLoaded) {
            Navigator.pop(context, true);
          }
        },
        child:
            BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
          if (state is ProductsInitial) {
            return returnLoader();
          } else if (state is ProductsLoading) {
            return returnLoader();
          } else if (state is ProductsLoaded) {
            if (state.products.isEmpty) {
              return returnError("No products");
            }
            return ProductList(
              itemCount: state.products.length,
              products: changeProductEntityListToProductList(state.products),
              onTap: onAddProduct,
              onDelete: null,
            );
          } else if (state is ProductsError) {
            return returnError(state.failure.message);
          } else {
            return returnLoader();
          }
        }),
      ),
    );
  }
}
