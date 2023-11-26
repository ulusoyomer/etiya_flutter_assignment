import 'package:etiya_flutter_assignment/core/service/toast_message.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/bloc/wishlist/wishlist_bloc.dart';
import 'package:etiya_flutter_assignment/core/helpers/helpers.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/widgets/return_error.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/widgets/return_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_products/list_products.dart';
import 'package:view_product_detail/model/product.dart' as product_detail;

part './mixins/home_mixin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeScreenMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wish List"),
        ),
        body:
            BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
          if (state is WishlistInitial) {
            return returnLoader();
          } else if (state is WishProductsLoading) {
            return returnLoader();
          } else if (state is WishProductsLoaded) {
            if (state.products.isEmpty) {
              return returnError("No products");
            }
            return ProductList(
              itemCount: state.products.length,
              products: changeProductEntityListToProductList(state.products),
              onTap: onTap,
              onDelete: onDelete,
            );
          } else if (state is WishListError) {
            return returnError(state.failure.message);
          } else {
            return returnLoader();
          }
        }),
        floatingActionButton: FloatingActionButton(
			key: const Key('addButton'),
          backgroundColor: Theme.of(context).primaryColorLight,
          onPressed: () {
				
				 Navigator.pushNamed(context, "/add-product").then((value) {
					
            if (value is bool && value) {
              printToastMessage(message: "Product added");
            }
            context.read<WishlistBloc>().add(const GetWishList());
          });
			 },
          child: const Icon(Icons.add),
        ));
  }
}
