import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita el icono DEBUG
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 210, 216, 252), // Cambia el color de fondo de la app
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 131, 170, 255),), // Cambia el color de la barra de navegación
        textTheme: const TextTheme(
          headlineLarge: TextStyle( // Cambia el estilo del título
            fontWeight: FontWeight.bold, // Cambia el estilo de la fuente
            color: Colors.indigo, // Cambia el color de la fuente
            fontSize: 16.5, // Cambia el tamaño de la fuente
            ), 
        ),
      ),
    );
  }
}
