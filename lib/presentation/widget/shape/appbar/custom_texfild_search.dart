import 'package:flutter/material.dart';

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
            borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
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