import 'package:etiya_flutter_assignment/core/routes/router.dart';
import 'package:etiya_flutter_assignment/core/service/generate.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/repositories/product_repository.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/get_procuts.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/wishlist_operations.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/bloc/products/products_bloc.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/bloc/wishlist/wishlist_bloc.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  //Generate GetIt
  generateGetIt();
  //Generate DataSource && Repository
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ProductsBloc>(
      create: (context) => ProductsBloc(
        getProductList: GetProductList(
          productRepository: locator<ProductRepositoryImplements>(),
        ),
      ), //First Event Set
    ),
	 BlocProvider<WishlistBloc>(
      create: (context) => WishlistBloc(
        wishListOperations: WishListOperations(
          productRepository: locator<ProductRepositoryImplements>(),
        ),
      )..add(const GetWishList()), //First Event Set
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etiya Flutter Assignment',
      theme: mainTheme(),
      initialRoute: '/',
      routes: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
