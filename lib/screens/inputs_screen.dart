import 'package:flutter/material.dart';
import 'package:practica3/screens/data_screen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedRadioOption = 0; // Para los RadioButtons
  int selectedIndex = 0; 

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
      appBar: AppBar(title: const Text('Entradas'), 
      automaticallyImplyLeading: false,),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué usas para ejecutar tus apps?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DataScreen()));
              },
              child: const Text('Guardar')
            )
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

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Nombre: ',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const FlutterLogo(),
        const SizedBox(
          width: 20,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              print('Estado del switch: $valueSwitch');
            });
            valueSwitch = value;
          },
        )
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0.0,
            max: 10.0,
            value: valueSlider,
            activeColor: AppTheme.iconColor,
            inactiveColor: AppTheme.mainColor,
            thumbColor: Colors.indigo,
            divisions: 10,
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                print('Valor del slider: $valueSlider');
              });
              valueSlider = value;
            }),
      ],
    );
  }

  Column entradasRadio() {
    return Column(children: [
      Text(
        'Qué prefieres usar para desarrollo móvil?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
      ListTile(
        title: Text(
          'Kotlin',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 1,
            groupValue: selectedRadioOption,
            onChanged: (value) {
              setState(() {
                selectedRadioOption = value!;
                print('Opción seleccionada: $selectedRadioOption');
              });
            },
          ),
        ),
      ),
      ListTile(
        title: Text(
          'Flutter',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 2,
            groupValue: selectedRadioOption,
            onChanged: (value) {
              setState(() {
                selectedRadioOption = value!;
                print('Opción seleccionada: $selectedRadioOption');
              });
            },
          ),
        ),
      )
    ]);
  }

  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Estado del checkbox 1: $isChecked1');
            });
            isChecked1 = value!;
          },
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Checkbox(
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value!;
              print('Estado del checkbox 2: $isChecked2');
            });
            isChecked2 = value!;
          },
        ),
        Text(
          'Windows',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Checkbox(
          value: isChecked3,
          onChanged: (value) {
            setState(() {
              isChecked3 = value!;
              print('Estado del checkbox 3: $isChecked3');
            });
            isChecked3 = value!;
          },
        ),
      ],
    );
  }
}
