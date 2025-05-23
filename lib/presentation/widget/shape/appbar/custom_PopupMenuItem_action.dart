import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Moreactions extends StatelessWidget {
  const Moreactions({super.key});

  @override
  Widget build(BuildContext context) {
  

    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

      elevation: 0,
      offset: const Offset(0, 60),
      color: Color(0xFFFFFFFF),

      icon: SvgPicture.asset("assets/icons/icon_moresvg.svg"),
      onSelected: (String value) {
        // Manejar la acción según la opción seleccionada
        switch (value) {
          case 'administrar cuenta':
            // Navegar a la pantalla de configuración
            break;
          case 'cambiar la contrase':
            // Navegar a la pantalla de perfil
            break;
          case 'registro':
            // Manejar el registro
            break;
          case 'finalizacion':
            // Manejar la finalización
            break;
        }
      },
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
              padding: EdgeInsets.zero,
              value: 'administrar cuenta',
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/administrar_cuenta.svg",
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Administrar cuenta',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 0.0,
                    color: Color(0xFF979797),
                    thickness: 0.2,
                    endIndent: 0.0,
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              padding: EdgeInsets.zero,

              value: 'cambiar la contrase',
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/icon_cambiar_contrase.svg",
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Cambiar la contraseña',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 0.0,
                    color: Color(0xFF979797),
                    thickness: 0.2,
                    endIndent: 0.0,
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              padding: EdgeInsets.zero,

              value: 'registro',
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/icon_registro.svg"),
                        SizedBox(width: 10),
                        Text(
                          'Registro de actividad',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(indent: 0.0, thickness: 0.2, endIndent: 0.0),
                ],
              ),
            ),
            PopupMenuItem(
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              value: 'finalizacion',
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/icon_finalizaciob.svg"),
                        SizedBox(width: 10),
                        Text(
                          'Finalizar la sesión',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF404040),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
    );
  }
}