import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/custom_PopupMenuItem_action.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/custom_texfild_search.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/custon_popupnoti.dart';

class Appbar_screen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;
    final user = ref.watch(userDataProvider);
    final notification = ref.watch(notificationProvider);

    return AppBar(
      leadingWidth:
          760, // Asegúrate de que este ancho sea suficiente para todos los widgets.
      toolbarHeight: 75,
      backgroundColor: const Color(0xFFFFFFFF),
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
        // Elimina el Expanded de aquí y usa directamente un Row.
        child: Row(
          children: [
            SvgPicture.asset("assets/logos/logosvg.svg"),
            const SizedBox(width: 90),
            IconButton(
              icon: Image.asset(
                'assets/icons/3_barras.png',
                width: 24,
                height: 24,
              ),
              padding: EdgeInsets.zero,
              onPressed: () {
                print("Botón con imagen pulsado");
              },
            ),
            const SizedBox(width: 30),
            // Envuelve el campo de texto en Expanded para que se ajuste al espacio restante.
            CustomTextField(),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.only(right: 20),
      actions: [
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: 5, end: 8),
          badgeContent: const SizedBox(),

          showBadge: notification,
          child: Custon_popupmenunotify(),
        ),
        const SizedBox(width: 10),

        SizedBox(
          child: Row(
            children: [
              Container(
                width: 44, // Asegúrate de que el ancho y alto sean adecuados.
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: colorScheme, width: 3.0),
                ),
                child: const CircleAvatar(
                  child: Icon(Icons.person, color: Colors.white, size: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      user.when(
                        data: (data) => data.name,
                        error: (error, stack) => "Error",
                        loading: () => "Cargando...",
                      ),
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xFF404040),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Text(
                      user.when(
                        data: (data) => data.cargo,
                        error: (error, stack) => "Error",
                        loading: () => "Cargando...",
                      ),
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xFF565656),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Moreactions(),
      ],
    );
  }
}

