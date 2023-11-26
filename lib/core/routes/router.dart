import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/screens/add_product_screen.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/screens/home_screen.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/presentation/screens/product_detail_screen.dart';

final router = {
	'/': (context) => const HomeScreen(),
	'/add-product': (context) => const AddProductScreen(),
	'/product_detail': (context) => const ProductDetailScreen(),
};