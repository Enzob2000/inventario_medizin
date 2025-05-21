import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {


  ThemeData getTheme( BuildContext context) => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFF0057FF) ,
    textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
    
  );


}