


import 'package:flutter/material.dart';

import 'package:inventario_medizin/presentation/widget/home/medicadetallepromo.dart';

class Containerdetallespromo extends StatelessWidget {
  const Containerdetallespromo({super.key});

 

  @override
  Widget build(BuildContext context) {

    final Color colorsheme = Theme.of(context).colorScheme.primary;
    return Container(
    
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
            Medicadetallespromo(),
          ],
        ),
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