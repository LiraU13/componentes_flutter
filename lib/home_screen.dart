import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.water_drop, color: Colors.blue),
            title: Text(
                    'Gotita 1',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                    ),
            subtitle: const Text('Normal'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(), //Muestra una línea
          ListTile(
            leading: const Icon(Icons.water_drop_outlined, color: Colors.cyan), // M,uestra un icono a la izquierda
            title: Text(
                    'Gotita 2',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.cyan,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                  ),
            subtitle: const Text('Outlined'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.water_drop_rounded, color: Colors.teal),
            title: Text(
                    'Gotita 3',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.teal,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                  ),
            subtitle: const Text('Rounded'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
