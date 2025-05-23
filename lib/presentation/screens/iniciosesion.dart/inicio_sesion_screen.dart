import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventario_medizin/presentation/providers/iniciosesion/provider_inicio.dart';
import 'package:inventario_medizin/presentation/widget/iniciosesion/bodyinicio.dart';
import 'package:inventario_medizin/presentation/widget/register/appbar.dart';

class InicioSesionScreen extends ConsumerWidget {
  static const String name = 'InicioSesionScreen';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0), // define la altura deseada
        child: AppBar_Screen(),
      ),
      body: BodyInicio(context, colorScheme, ref),
    );
  }
}
