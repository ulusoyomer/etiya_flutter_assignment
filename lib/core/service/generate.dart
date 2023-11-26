import 'package:etiya_flutter_assignment/core/errors/failure.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/data_source/remote_grpc_data_source.dart';
import 'package:etiya_flutter_assignment/feature_grpc_products/data/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void generateGetIt() {
  locator.registerLazySingleton<RemoteGrpcDataSource>(
      () => RemoteGrpcDataSource());
  locator.registerLazySingleton<ConnectionFailure>(
      () => const ConnectionFailure(message: "No Connection"));
  locator.registerLazySingleton<InValidProductId>(
      () => const InValidProductId(message: "Invalid Product Id"));
  locator.registerLazySingleton<AlreadyExistFailure>(
      () => const AlreadyExistFailure(message: "Already Exist"));
  locator.registerLazySingleton<ProductRepositoryImplements>(() =>
      ProductRepositoryImplements(dataSource: locator<RemoteGrpcDataSource>()));
}
