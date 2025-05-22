import 'package:flutter/material.dart';

Widget _buildTextField(String label, String hint, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color.fromARGB(255, 32, 39, 51),
          ),
        ),
        SizedBox(height: 4),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 160, 174, 192),
              fontWeight: FontWeight.w400, // Mismo color que el borde
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              // Borde cuando no está enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              // Borde cuando está enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              // Borde cuando hay error
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red, // Puedes cambiarlo si lo necesitas
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // Borde con error y enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red, // Puedes cambiarlo si lo necesitas
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }


