import 'package:get_it/get_it.dart';
import 'package:proyecto_unidad1/core/services/api.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton(() => CRUDModel());
}
