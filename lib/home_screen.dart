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
            leading: const Icon(Icons.input, color: Colors.blue),
            title: Text(
                    'Entradas',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                    ),
            subtitle: const Text('Diferentes widgets para entradas de Flutter'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(), //Muestra una línea
          ListTile(
            leading: const Icon(Icons.list, color: Colors.cyan), // M,uestra un icono a la izquierda
            title: Text(
                    'ListView.builder',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.cyan,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                  ),
            subtitle: const Text('Scroll infinito'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notification_add, color: Colors.teal),
            title: Text(
                    'Notificaciones',
                    style: Theme.of(context).textTheme.headlineLarge, // Estilos para el título desde el tema de main_app.dart
                    // style: TextStyle(
                    //   color: Colors.teal,
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 19,
                    // ),
                  ),
            subtitle: const Text('Creación de notificaciones'),
            trailing: const Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
