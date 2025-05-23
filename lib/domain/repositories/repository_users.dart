

import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';

abstract class UserRepository<user> {
  
  Future<User> getUserData()  ;

}