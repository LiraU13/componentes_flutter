import 'package:flutter/material.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int selectedIndex = 0; 

  // List screens = const [
  //   HomeScreen(),
  //   InfinitListScreen(),
  //   NotificationsScreen(),
  //   ImagesScreen(),
  // ];

  // openScreen(int index) {
  //   setState(() {
  //     MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
  //     switch (index) {
  //       case 0:
  //         ruta =
  //             MaterialPageRoute(builder: (context) => const HomeScreen());
  //         break;
  //       case 1:
  //         ruta = MaterialPageRoute(
  //             builder: (context) => const InfinitListScreen());
  //         break;
  //       case 2:
  //         ruta = MaterialPageRoute(
  //             builder: (context) => const NotificationsScreen());
  //         break;
  //       case 3:
  //         ruta =
  //             MaterialPageRoute(builder: (context) => const ImagesScreen());
  //         break;
  //     }
  //     selectedIndex = index;
  //     Navigator.push(context, ruta);
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input_rounded),
            ),
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme
                  .headlineLarge, // Estilos para el título desde el tema de main_app.dart
              // style: TextStyle(
              //   color: Colors.blue,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 19,
              // ),
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de Flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),  
            // trailing: const CircularProgressIndicator(
            //   strokeWidth: 15,
            //   value: 0.75,
            //   color: AppTheme.iconColor,
            //   backgroundColor: Colors.green,
            // ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right, color: AppTheme.iconColor),
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(), //Muestra una línea
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list),
            ), // M,uestra un icono a la izquierda
            title: Text(
              'ListView.builder',
              style: AppTheme.lightTheme.textTheme
                  .headlineLarge, // Estilos para el título desde el tema de main_app.dart
              // style: TextStyle(
              //   color: Colors.cyan,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 19,
              // ),
            ),
            subtitle: Text(
              'Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right, color: AppTheme.iconColor),
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfinitListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme
                  .headlineLarge, // Estilos para el título desde el tema de main_app.dart
              // style: TextStyle(
              //   color: Colors.teal,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 19,
              // ),
            ),
            subtitle: Text(
              'Creación de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right, color: AppTheme.iconColor),
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
          const Divider(),
          ListTile(
            leading: 
              IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.image),
              ),
              title: Text(
                'Imágenes',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              subtitle: Text(
              'Widgets de manejo de imágenes',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing:IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right, color: AppTheme.iconColor),
              ),
              onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
          ),
          const Divider(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: selectedIndex,
      //   backgroundColor: Colors.deepOrange,
      //   selectedItemColor: Colors.indigo,
      //   unselectedItemColor: Colors.black54,
      //   onTap: (index) => openScreen(index),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Inicio',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list),
      //       label: 'Lista',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.notification_add,
      //       ),
      //       label: 'Notificaciones',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.image,
      //       ),
      //       label: 'Imágenes',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.exit_to_app,
      //       ),
      //       label: 'Salir',
      //     ),
      //   ],
      // ),
    );
  }
}
