import 'package:get_it/get_it.dart';
import 'package:inventario_medizin/domain/datasources/datasour_users.dart';
import 'package:inventario_medizin/domain/repositories/repository_users.dart';
import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';
import 'package:inventario_medizin/infrastructure/repositories/repository_user_impl.dart';

final getIt = GetIt.instance;

void setupLocator() {
  //use_case_users
  getIt.registerSingleton<UserDatasource>(UserDatasourceimpl());
  getIt.registerLazySingleton<UserRepository>(() => RepositoryUserImpl(
     datasour: getIt<UserDatasource>()));
}
