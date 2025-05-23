import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventario_medizin/presentation/widget/register/appbar.dart';
import 'package:inventario_medizin/presentation/widget/verificacioncorreo/bodyverificacion.dart';


class VerificacioncorreoScreen extends ConsumerWidget {
  const VerificacioncorreoScreen({super.key});

  static const String name = 'VerificacionScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(50.0), // define la altura deseada
        child: AppBar_Screen(),
      ),
      body: BodyVerificacion(context, colorScheme),
    );
  }
}