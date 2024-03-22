import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {

  final bool valueSwitch;
  final bool isChecked1;
  final bool isChecked2;
  final bool isChecked3;
  final double valueSlider;
  final int selectedRadioOption;
  final String textInput;

  const DataScreen({
    super.key,
    required this.valueSwitch,
    required this.isChecked1,
    required this.isChecked2,
    required this.isChecked3,
    required this.valueSlider,
    required this.selectedRadioOption,
    required this.textInput,
  });

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int selectedIndex = 0;

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
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
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Guardados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('-> Nombre: ${widget.textInput}',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(
              height: 2,
            ),
            Text('-> Le gusta Flutter: ${widget.valueSwitch ? "Sí" : "No"}',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(
              height: 2,
            ),
            Text('-> Que tanto le gusta Flutter: ${widget.valueSlider}',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(
              height: 2,
            ),
            Text('-> Para desarrollo móvil prefiere: ${widget.selectedRadioOption == 1 ? "Kotlin" : "Flutter"}',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(
              height: 2,
            ),
            Text('-> Para ejecutar sus apps utiliza: ',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            const SizedBox(
              height: 2,
            ),
            Text('    - Navegador: ${widget.isChecked1 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineLarge),
            Text('    - Emulador: ${widget.isChecked2 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineLarge),
            Text('    - Smartphone: ${widget.isChecked3 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineLarge),

          ],
        ),
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
