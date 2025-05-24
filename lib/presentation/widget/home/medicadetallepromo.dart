

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';

class Medicadetallespromo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final detallespromo = ref.watch(detallesPromosProvider);
    return SizedBox(
      width: 1074,
      child: Column(
        children: [
          ...detallespromo.map(
            (e) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    spacing: 50,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                  color: Color(0xFFD8D8D8),
                                ),
                                child: Center(child: Image.asset(e.icono)),
                              ),

                              Text_table(
                                text: e.nombre,
                                size: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF202224),
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
                          ),
                    ],
                  ),
                ),
                Divider(color: Color(0xFF202224), thickness: 0.07),
              ],
            ),
          ),
        ],
      ),
      // Ajusta el ancho según sea necesario
    );
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
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}

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
        borderRadius: BorderRadius.all(Radius.circular(13.5)),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
