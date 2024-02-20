import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 210, 216, 252);
  static const backColor = Color.fromARGB(255, 131, 170, 255);
  static const iconColor = Color.fromARGB(255, 0, 38, 119);
  
  // Declaraciones del tema claro 
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: mainColor, // Cambia el color de fondo de la app
    appBarTheme: const AppBarTheme(
      color: backColor,
    ), // Cambia el color de la barra de navegación
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.tiltNeon( // theNautigal - Letra cursiva 
        // Cambia el estilo del título
        fontWeight: FontWeight.w700, // Cambia el estilo de la fuente
        color: Colors.indigo, // Cambia el color de la fuente
        fontSize: 16.5, // Cambia el tamaño de la fuente
        // decoration: TextDecoration.lineThrough, // Agrega una línea al texto
        // decorationColor: Colors.indigo, // Cambia el color de la decoración
        // decorationStyle: TextDecorationStyle.dotted, // Cambia el estilo de la decoración
        // decorationThickness: 5, // Cambia el grosor de la decoración
        // fontStyle: FontStyle.italic
      ),
      bodySmall: GoogleFonts.dangrek( // theNautigal - Letra cursiva 
        // Cambia el estilo del subtítulo
        fontWeight: FontWeight.w500, // Cambia el estilo de la fuente
        color: Colors.blueGrey, // Cambia el color de la fuente
        fontSize: 14.0, // Cambia el tamaño de la fuente
        decoration: TextDecoration.underline, // Agrega una línea al texto
        decorationColor: Colors.indigo, // Cambia el color de la decoración
        // decorationStyle: TextDecorationStyle.dotted, // Cambia el estilo de la decoración
        decorationThickness: 2, // Cambia el grosor de la decoración
        // fontStyle: FontStyle.italic
      ),
    ),
  );
}
