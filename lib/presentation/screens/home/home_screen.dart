import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventario_medizin/infrastructure/datasources/datasour_user_impl.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
import 'package:inventario_medizin/presentation/widget/shape/appbar/appbar.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    

    return Scaffold(
      appBar: PreferredSize(
    preferredSize: const Size.fromHeight(75.0), // define la altura deseada
    child: Appbar_screen()),

      body: Container(), // Resto del contenido de la pantalla.
    );
  }
}
