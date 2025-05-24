
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';

class Menuaction extends ConsumerWidget {
  final String icon;
  final String action;
  final String namescreen;
  final int index;
  final String link;

  Menuaction({
    super.key,
    required this.icon,
    required this.action,
    required this.namescreen,
    required this.index,
    required this.link, 
  });

  @override
  Widget build(BuildContext context, ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;

    final menuindex = ref.watch(actionsMenuProvider);

    final colortext =
        menuindex == index ? const Color(0xFFFFFFFF) : const Color(0xFF434343);

    final colorbackgroud =
        menuindex == index ? colorScheme : const Color(0xFFFFFFFF);

    return GestureDetector(
      onTap: () {
        ref.read(actionsMenuProvider.notifier).setIndex(index);
        // Aquí puedes agregar la lógica para navegar a la pantalla correspondiente
        // Navigator.pushNamed(context, namescreen);
        context.go(link);
      },
      child: Container(
        width: 240,
        height: 50,
        color: colorbackgroud,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            spacing: 10,
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(colortext, BlendMode.srcIn),
              ),
              Text(
                action,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colortext,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String action;
  final String namescreen;
  final int index;
  final String link;

  MenuItem( {
    required this.icon,
    required this.action,
    this.namescreen = "home",
    this.index = 0,
    required this.link,
  });
}

final List<MenuItem> menuItems = [
  MenuItem(
    icon: "assets/icons/icon_panel.svg",
    action: "Panel de control",
    index: 0,
    link: '/home'
  ),
  MenuItem(
    icon: "assets/icons/Icon_caja.svg",
    action: "Caja de ventas",
    index: 1,
    link: '/caja'
  ),
  MenuItem(icon: "assets/icons/icon_mensaje.svg", action: "Mensajes", index: 2,
    link: '/home',
  ),
  MenuItem(icon: "assets/icons/Icon_ordenes.svg", action: "Ordenes", index: 3,
    link: '/home',
  ),
  MenuItem(
    icon: "assets/icons/Icon_productos.svg",
    action: "Productos en Stock",
    index: 4,
    link: '/home',
  ),
  MenuItem(
    icon: "assets/icons/Icon_medicaemntos_control.svg",
    action: "Med. controlados",
    index: 5,
    link: '/home',
  ),
];

final List<MenuItem> menuauxil = [
  MenuItem(
    icon: "assets/icons/Icon_estadistica.svg",
    action: "Estadísticas",
    index: 6,
    link: '/home',
  ),
  MenuItem(icon: "assets/icons/Icon_reporte.svg", action: "Reporte", index: 7,
  link: '/home',),
];

final List<MenuItem> menuconfig = [
  MenuItem(
    icon: "assets/icons/icon_configura.svg",
    action: "Configuraciones",
    index: 8,
    link: '/home',
  ),
  MenuItem(
    icon: "assets/icons/Icons_cerrar_sesion.svg",
    action: "Cerrar sesión",
    index: 9,
    link: '/home',
  ),
];
