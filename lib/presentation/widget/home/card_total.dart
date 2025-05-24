
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Card_total extends StatelessWidget {
  final String nombre;
  final double cantidad;
  final double porcentaje;
  final bool ascendente;
  final String icono;

  const Card_total({
    super.key,
    required this.nombre,
    required this.cantidad,
    required this.porcentaje,
    required this.ascendente,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    final colorsheme = Theme.of(context).colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Container(
        width: 262,
        height: 161,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color(0xFFFFFFFF),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF202224),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: Text(
                      "$cantidad",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF202224),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/${ascendente ? "icon_grafica_acende.svg" : "icon_grafica_desen.svg"}",
                      ),
                      Text(
                        "$porcentaje%",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color:
                              ascendente
                                  ? Color(0xFF00B69B)
                                  : Color(0xFFF02023),
                        ),
                      ),
                      Text(
                        " Último mes ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF606060),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: colorsheme,
                  ),
                  child: Center(child: SvgPicture.asset(icono)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cardtotal {
  final String nombre;
  final double cantidad;
  final double porcentaje;
  final bool ascendente;
  final String icono;

  Cardtotal({
    required this.nombre,
    required this.cantidad,
    required this.porcentaje,
    required this.ascendente,
    required this.icono,
  });
}
