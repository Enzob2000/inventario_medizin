import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBar_Screen extends ConsumerWidget {
  const AppBar_Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;
    return AppBar(
      leadingWidth:
          900, // Asegúrate de que este ancho sea suficiente para todos los widgets.
      toolbarHeight: 50,
      backgroundColor: colorScheme,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 350.0, vertical: 10),
        // Elimina el Expanded de aquí y usa directamente un Row.
        child: Row(
          children: [
            Image.asset("assets/logos/medizin.png", width: 46, height: 27),
            const SizedBox(width: 10),
            Text(
              'Medizin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton.icon(
            onPressed: () {},
            label: Text(
              'Iniciar Sesión',
              style: TextStyle(color: Colors.white),
            ),
            icon: Image.asset('assets/icons/llave.png', width: 13),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 350),
          child: FilledButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            label: Text(
              'Registrarme',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 87, 255),
                fontWeight: FontWeight.w600,
              ),
            ),
            icon: Icon(
              Icons.account_circle_rounded,
              color: Color.fromARGB(255, 0, 87, 255),
            ),
          ),
        ),
      ],
    );
  }
}
