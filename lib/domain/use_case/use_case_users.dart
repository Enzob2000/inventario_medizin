
import 'package:inventario_medizin/domain/repositories/repository_users.dart';
import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';


class UseCaseUsers {
  final UserRepository repository;
  
UseCaseUsers({ required this.repository});

  Future<User> getUserData() async {
    return repository.getUserData();
  }
}