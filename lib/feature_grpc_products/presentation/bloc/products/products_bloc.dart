import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/entities/product.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/domain/usecases/get_procuts.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductList getProductList;
  ProductsBloc({required this.getProductList}) : super(const ProductsInitial()) { // Dummy initial state
  // ProductsBloc({required this.getProductList}) : super(const WishProductsLoading()) { // Real initial state
    on<GetProducts>(_getProducts);

  }

  void _getProducts(GetProducts event, Emitter<ProductsState> emit) async {
    emit(const ProductsLoading());
    final failureOrProducts = await getProductList.getProducts();
		failureOrProducts.fold(
      (failure) => emit(ProductsError(failure: failure)),
      (products) => emit(ProductsLoaded(products: products)),
    );
  }

  

}
