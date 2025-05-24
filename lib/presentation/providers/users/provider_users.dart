import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:inventario_medizin/config/services/service_locator.dart";
import "package:inventario_medizin/domain/repositories/repository_users.dart";
import "package:inventario_medizin/domain/use_case/use_case_users.dart";
import "package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart";
import "package:inventario_medizin/presentation/widget/home/card_total.dart";
import "package:inventario_medizin/presentation/widget/home/medicadetallepromo.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part 'provider_users.g.dart';

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Future<User> userData(Ref ref) async {
  final repository = getIt<UserRepository>();
  final usceCase = UseCaseUsers(repository: repository);
  User user = await usceCase.getUserData();

  return user;
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
bool notification(Ref ref) {
  return true;
}

@Riverpod(keepAlive: true)
class ActionsMenu extends _$ActionsMenu {
  @override
  int build() {
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
int notificationcount(Ref ref) {
  return 3;
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Cardtotal totalusuarios(Ref ref) {
  return Cardtotal(
    nombre: "Total Usuarios",
    cantidad: 40.333,
    porcentaje: 8,
    ascendente: true,
    icono: "assets/icons/icon_total_usu.svg",
  );
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Cardtotal totalordenes(Ref ref) {
  return Cardtotal(
    nombre: "Total de Ordenes",
    cantidad: 20.333,
    porcentaje: 5,
    ascendente: false,
    icono: "assets/icons/Icons_total_orde.svg",
  );
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Cardtotal totalventas(Ref ref) {
  return Cardtotal(
    nombre: "Total de Ventas",
    cantidad: 30.3,
    porcentaje: 10,
    ascendente: true,
    icono: "assets/icons/icon_total_ventas.svg",
  );
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
Cardtotal totalpendientes(Ref ref) {
  return Cardtotal(
    nombre: "Total Pendientes",
    cantidad: 50.444,
    porcentaje: 15,
    ascendente: false,
    icono: "assets/icons/icon_total_pedientes.svg",
  );
}

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
List<DetallePromocion> detallesPromos(Ref ref) {
  return <DetallePromocion>[
    DetallePromocion(
      nombre: "Omega 3",
      descripcion: "Lorem ipsum dolor sit...",
      fechaHora: "2023-10-01 12:00",
      cantidad: 230,
      valor: 350.84,
      estado: "Activo",
      icono: "assets/medicamentos/omega_3.png",
    ),

    DetallePromocion(
      nombre: 'Miovit',
      descripcion: "Lorem ipsum dolor sit",
      fechaHora: "2023-10-01 12:00",
      cantidad: 43,
      valor: 450.40,
      estado: "pausado",
      icono: "assets/medicamentos/miovit.png",
    ),

    DetallePromocion(
      nombre: "fororo",
      descripcion: "Lorem ipsum dolor sit",
      fechaHora: "2023-10-01 12:00",
      cantidad: 83,
      valor: 295.50,
      estado: "cancelado",
      icono: "assets/medicamentos/fororos.png",
    ),
  ];
}
