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
        children: const [
          ListTile(
            leading: Icon(Icons.water_drop, color: Colors.blue),
            title: Text(
                    'Gotita 1',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                    ),
            subtitle: Text('Normal'),
            trailing: Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          Divider(), //Muestra una línea
          ListTile(
            leading: Icon(Icons.water_drop_outlined, color: Colors.cyan), // M,uestra un icono a la izquierda
            title: Text(
                    'Gotita 2',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),),
            subtitle: Text('Outlined'),
            trailing: Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.water_drop_rounded, color: Colors.teal),
            title: Text(
                    'Gotita 3',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),),
            subtitle: Text('Rounded'),
            trailing: Icon(Icons.arrow_circle_right, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
