import 'package:inventario_medizin/domain/datasources/datasour_users.dart';
import 'package:inventario_medizin/domain/repositories/repository_users.dart';
import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';

class RepositoryUserImpl implements  UserRepository {
  late final UserDatasource datasour;

  RepositoryUserImpl({required this.datasour});

  @override
  Future<User> getUserData() async  {
    return await datasour.fetchUserData();
  }
  
  
  
  
}
