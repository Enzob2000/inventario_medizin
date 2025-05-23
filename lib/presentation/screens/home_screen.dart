import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
import 'package:inventario_medizin/presentation/widget/home/card_total.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/appbar.dart';
import 'package:inventario_medizin/presentation/widget/shape/action_sceens/action_screen.dart'
    as ActionsMenu;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

  @override
  Widget build(BuildContext context, ref) {
    final totalusuarios = ref.watch(totalusuariosProvider);
    final totalordenes = ref.watch(totalordenesProvider);
    final totalventas = ref.watch(totalventasProvider);
    final totalpendintes = ref.watch(totalpendientesProvider);
    final Color colorsheme = Theme.of(context).colorScheme.primary;
    final detallespromo = ref.watch(detallesPromosProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // define la altura deseada
        child: Appbar_screen(),
      ),
      backgroundColor: Color(0xFFF5F6FA),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ensure ActionsMenu is a widget or wrap/replace as needed
              ActionsMenu.ActionsMenu(),
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

                    Container(
                    
                      width: 1138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 30,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Detalles de mis Promociones",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                height: 48,
                                width: 1074,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: colorsheme,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    spacing: 100,
                                    children: [
                                      ...text.map((e) => Text_table(text: e)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1074,
                              child: Column(
                                children: [
                                  ...detallespromo.map(
                                    (e) => Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10.0
                                          ),
                                          child: Row(
                                            spacing: 50,
                                            children: [
                                              SizedBox(
                                                width: 170,
                                                height: 30,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 10,
                                                      
                                                      ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(18)),
                                                          color: Color(0xFFD8D8D8)
                                                        ),
                                                        child: Center(
                                                          child: Image.asset(e.icono),
                                                        ),

                                                      ),
                                                                        
                                                      Text_table(
                                                        text: e.nombre,
                                                        size: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color(
                                                          0xFF202224,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 170,
                                                child: Text_table(
                                                  text: e.descripcion,
                                                  size: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF202224),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 150,
                                                child: Text_table(
                                                  text: e.fechaHora,
                                                  size: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF202224),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18),
                                                child: SizedBox(
                                                  width: 100,
                                                  child: Text_table(
                                                    text: e.cantidad.toString(),
                                                    size: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF202224),
                                                  ),
                                                ),
                                              ),
                                                                        
                                              SizedBox(
                                                width: 80,
                                                child: Text_table(
                                                  text: e.valor.toString(),
                                                  size: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF202224),
                                                ),
                                              ),
                                                                        
                                              (e.estado == "Activo")
                                                  ? Estadopromo(
                                                    text: e.estado,
                                                    color: Color(0xFF48BB78),
                                                  )
                                                  : (e.estado == "pausado")
                                                  ? Estadopromo(
                                                    text: e.estado,
                                                    color: Color(0xFFF6AA1E),
                                                  )
                                                  : Estadopromo(
                                                    text: e.estado,
                                                    color: Color(0xFFFD5454),
                                                  )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xFF202224),
                                          thickness: 0.07,
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                              ),
                              // Ajusta el ancho según sea necesario
                            ),
                          ],
                        ),
                      ),
                    ),
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

class Estadopromo extends StatelessWidget {
  
  final String text;
  final Color color;

  const Estadopromo({super.key, required this.text, required this.color});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 93,
      height: 27,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(
          Radius.circular(13.5),
        ),
        color: color,
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFFFFFFFF),
        ),
        ),
      ));
  }
}

class Text_table extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;

  const Text_table({
    super.key,
    this.text = "Nombre del producto",
    this.size = 14,
    this.fontWeight = FontWeight.w700,
    this.color = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color
      ),
    );
  }
}

final List<String> text = [
  "Nombre del producto",
  "Descripción",
  "Fecha - Hora",
  "Cantidad",
  "Valor",
  "Estado",
];

class DetallePromocion {
  final String nombre;
  final String descripcion;
  final String fechaHora;
  final int cantidad;
  final double valor;
  final String estado;
  final String icono;

  DetallePromocion({
    required this.icono,
    required this.nombre,
    required this.descripcion,
    required this.fechaHora,
    required this.cantidad,
    required this.valor,
    required this.estado,
  });
}
