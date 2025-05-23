
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
import 'package:inventario_medizin/presentation/widget/home/card_total.dart';
import 'package:inventario_medizin/presentation/widget/home/containerdetallespromo.dart';
import 'package:inventario_medizin/presentation/widget/shape/action_sceens/action_screen.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/appbar.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

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
                    Text(
                      "Panel de control",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF202224),
                      ),
                    ),
                    Row(
                      spacing: 30,
                      children: [
                        Card_total(
                          nombre: totalusuarios.nombre,
                          cantidad: totalusuarios.cantidad,
                          porcentaje: totalusuarios.porcentaje,
                          ascendente: totalusuarios.ascendente,
                          icono: totalusuarios.icono,
                        ),

                        Card_total(
                          nombre: totalordenes.nombre,
                          cantidad: totalordenes.cantidad,
                          porcentaje: totalordenes.porcentaje,
                          ascendente: totalordenes.ascendente,
                          icono: totalordenes.icono,
                        ),
                        Card_total(
                          nombre: totalventas.nombre,
                          cantidad: totalventas.cantidad,
                          porcentaje: totalventas.porcentaje,
                          ascendente: totalventas.ascendente,
                          icono: totalventas.icono,
                        ),
                        Card_total(
                          nombre: totalpendintes.nombre,
                          cantidad: totalpendintes.cantidad,
                          porcentaje: totalpendintes.porcentaje,
                          ascendente: totalpendintes.ascendente,
                          icono: totalpendintes.icono,
                        ),
                      ],
                    ),

                    Containerdetallespromo(),
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

