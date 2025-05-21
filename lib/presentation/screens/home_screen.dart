import 'package:flutter/material.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/appbar.dart';
import 'package:inventario_medizin/presentation/widget/shape/action_sceens/action_screen.dart' as ActionsMenu;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // define la altura deseada
        child: Appbar_screen(),
      ),

      body: SingleChildScrollView(
        child: Row(
          children: [
            // Ensure ActionsMenu is a widget or wrap/replace as needed
           ActionsMenu.ActionsMenu()// Reemplaza esto con tu widget ActionsMenu
          ],
        ),
      ), // Resto del contenido de la pantalla.
    );
  }
}
