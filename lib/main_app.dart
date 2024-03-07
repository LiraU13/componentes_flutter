import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita el icono DEBUG
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
      initialRoute: '/screens/home_screen.dart',
      routes: {
        '/screens/home_screen.dart': (context) => const HomeScreen(),
        '/screen/inputs_screen.dart': (context) => const InputsScreen(),
        '/screen/data_screen.dart': (context) => const InputsScreen(),
        '/screen/images_screen.dart': (context) => const InputsScreen(),
        '/screen/infinite_list_screen.dart': (context) => const InputsScreen(),
        '/screen/notifications_screen.dart': (context) => const InputsScreen(),
      },
    );
  }
}
