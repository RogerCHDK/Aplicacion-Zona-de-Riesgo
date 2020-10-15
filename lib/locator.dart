import 'package:get_it/get_it.dart';
import 'package:proyecto_unidad1/core/services/api.dart';
import 'package:proyecto_unidad1/core/services/apiFiltro.dart';
import 'package:proyecto_unidad1/core/services/apiMunicipios.dart';
import 'package:proyecto_unidad1/core/services/apiRiesgo.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDFiltro.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton(() => CRUDModel());
  locator.registerLazySingleton(() => ApiMunicipios('municipios'));
  locator.registerLazySingleton(() => CRUDMunicipios());
  locator.registerLazySingleton(() => ApiFiltro('filtros'));
  locator.registerLazySingleton(() => CRUDFiltro());
  locator.registerLazySingleton(() => ApiRiesgo('riesgo'));
  locator.registerLazySingleton(() => CRUDRiesgo());
}
