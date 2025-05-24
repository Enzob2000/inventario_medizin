import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
import 'package:inventario_medizin/presentation/widget/home/card_total.dart';
import 'package:inventario_medizin/presentation/widget/home/containerdetallespromo.dart';
import 'package:inventario_medizin/presentation/widget/home/containerdetallesventa.dart';
import 'package:inventario_medizin/presentation/widget/shape/action_screens/action_screen.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar_home/appbar.dart';

class CajaVentasScreen extends ConsumerWidget {
  const CajaVentasScreen({super.key});

  static const String name = "CajaVentasScreen";

  @override
  Widget build(BuildContext context, ref) {
    final totalusuarios = ref.watch(totalusuariosProvider);
    final totalordenes = ref.watch(totalordenesProvider);
    final totalventas = ref.watch(totalventasProvider);
    final totalpendintes = ref.watch(totalpendientesProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // define la altura deseada
        child: Appbarscreen(),
      ),
      backgroundColor: Color(0xFFF5F6FA),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ensure ActionsMenu is a widget or wrap/replace as needed
              Menuactions(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Containerdetallesventa(),
                  ],
                ),
              ), // Reemplaza esto con tu widget ActionsMenu
            ],
          ),
        ),
      ), // Resto del contenido de la pantalla.
    );
  }
}
