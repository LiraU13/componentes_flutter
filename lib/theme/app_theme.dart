import 'package:flutter/material.dart';

class AppTheme {
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 210, 216, 252);
  static const backColor = Color.fromARGB(255, 131, 170, 255);
  
  // Declaraciones del tema claro 
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: mainColor, // Cambia el color de fondo de la app
    appBarTheme: const AppBarTheme(
      color: backColor,
    ), // Cambia el color de la barra de navegación
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        // Cambia el estilo del título
        fontWeight: FontWeight.bold, // Cambia el estilo de la fuente
        color: Colors.indigo, // Cambia el color de la fuente
        fontSize: 16.5, // Cambia el tamaño de la fuente
      ),
    ),
  );
}
