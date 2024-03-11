import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';

class InfinitListScreen extends StatefulWidget {
  const InfinitListScreen({super.key});

  @override
  State<InfinitListScreen> createState() => _InfinitListScreenState();
}

class _InfinitListScreenState extends State<InfinitListScreen> {
    int selectedIndex = 1;

  List screens = const [
    HomeScreen(),
    InfinitListScreen(),
    NotificationsScreen(),
    ImagesScreen(),
  ];

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
          ruta =
              MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
              builder: (context) => const InfinitListScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 3:
          ruta =
              MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Infinita'),
      automaticallyImplyLeading: false,),
      body: const Center(
        child: Text('Lista Infinita'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black54,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
            ),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
            ),
            label: 'Imágenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
            ),
            label: 'Salir',
          ),
        ],
      ),
    );
  }
}
