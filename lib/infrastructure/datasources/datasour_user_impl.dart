import 'package:inventario_medizin/domain/datasources/datasour_users.dart';


class UserDatasourceimpl implements UserDatasource {
  @override
  Future<User> fetchUserData() async {
    // Simulamos un retraso de red
    //await Future.delayed(const Duration(seconds: 0));
    
    // Retornamos una lista de usuarios de ejemplo
    return User(
      name: "Juan Perez",
      cargo: "Gerente de Ventas",
    );
  }
}


class User {
  final String name;
  final String cargo;

  User({
    required this.name,
    required this.cargo,
  });

}
