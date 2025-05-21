import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';
// import 'package:inventario_medizin/presentation/providers/users/provider_users.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color colorScheme = Theme.of(context).colorScheme.primary;
    final user = ref.watch(userDataProvider);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 760, // Asegúrate de que este ancho sea suficiente para todos los widgets.
        toolbarHeight: 75,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
          // Elimina el Expanded de aquí y usa directamente un Row.
          child: Row(
            children: [
              Image.asset(
                "assets/logos/medizin_image.png",
                height: 34,
                width: 139,
              ),
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
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/icon_notificasion.png"
            ,height: 20,
            width: 20,),
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
                    border: Border.all(
                      color: colorScheme,
                      width: 3.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    child: Icon(Icons.person, color: Colors.white, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
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
                       style:GoogleFonts.nunitoSans(
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
                        style:GoogleFonts.nunitoSans(
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
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/icon_more.png"
            ,height: 20,
            width: 20,),
          ),

          
        ],
      ),
      body: Container(), // Resto del contenido de la pantalla.
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // Quita el ancho fijo para que el campo se adapte al espacio asignado por Expanded.
    return SizedBox(
      height: 50,
      width: 360,
      child: TextField(
          
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide:
                const BorderSide(color: Colors.transparent, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide:
                const BorderSide(color: Colors.transparent, width: 2.0),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          hintText: "¿Qué estás buscando?",
          hintStyle: const TextStyle(color: Color(0xFF726D6D), fontSize: 14),
        ),
      ),
    );
  }
}