
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as badge;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';

class Custon_popupmenunotify extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final notify = ref.watch(notificationProvider);
    final countnotification = ref.watch(notificationcountProvider);

    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      offset: Offset(0, 50),
      elevation: 0,
      color: Color(0xFFFFFFFF),
      icon: Image.asset(
        "assets/icons/icon_notificasion.png",
        height: 20,
        width: 20,
      ),
      onSelected: (int value) {
        // Manejar la acción según la opción seleccionada
        switch (value) {
          case 0:
            // Navegar a la pantalla de configuración
            break;
          case 1:
            // Navegar a la pantalla de perfil
            break;
          case 2:
            // Manejar el registro
            break;
          case 3:
            // Manejar la finalización
            break;
          case 4:
            // Manejar la finalización
            break;
        }
      },
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry<int>>[
            PopupMenuItem(
              value: 0,
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Notificación",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFF19D8EA),
                        child: badge.Badge(
                          offset: Offset(15, -15),
                          isLabelVisible: notify,
                          label: Text("$countnotification"),
                          child: SvgPicture.asset(
                            "assets/icons/icon_nuevo_pedido.svg",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nuevo pedido",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF202224),
                              ),
                            ),
                            Text(
                              "Sea a registrado un nuevo...",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFB5B5B5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFF4273B8),
                        child: SvgPicture.asset("assets/icons/Icon_perfil.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Perfil",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF202224),
                              ),
                            ),
                            Text(
                              "Actualiza tu perfil",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFB5B5B5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF6495ED),
                            child: SvgPicture.asset(
                              "assets/icons/icon_error_en_pro.svg",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Error en producto",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF202224),
                                  ),
                                ),
                                Text(
                                  "Parece que tu  producto...",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFB5B5B5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Divider(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: 4,
              height: 30,
              child: Center(
                child: Text(
                  "Ver todas las notificaciones",
                  style: TextStyle(
                    color: Color(0xFFA8A8A8),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
    );
  }
}
