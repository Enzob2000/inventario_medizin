import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = "Homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        toolbarHeight: 70,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                "assets/logos/medizin_image.png",
                height: 34,
                width: 139,
              ),
              SizedBox(width: 90),
              IconButton(
               
                icon: Image.asset('assets/icons/3_barras.png',
                width: 24,
                height: 24),
                padding:
                    EdgeInsets.zero, // Opcional: quita el padding por defecto
                onPressed: () {
                  print("Botón con imagen pulsado");
                },
              ),
              SizedBox(width: 30),
              Customtextfild(),
            ],
          ),
        ),
        actions: [],
      ),
    );
  }
}

class Customtextfild extends StatelessWidget {
  const Customtextfild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF5F5F5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          hintText: "¿Qué estás buscando?",
          hintStyle: TextStyle(
            color: Color(0xFF726D6D),
            fontSize: 14
            
          ),
        ),
      ),
    );
  }
}
