import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            const ElevatedButton(onPressed: null, child: Text('Guardar'))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.lightTheme.primaryColorLight,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.teal,),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.donut_large_sharp, color: Colors.teal,),
          label: 'Datos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.exit_to_app, color: Colors.teal,),
          label: 'Salir',
        ),
      ],
      unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyLarge,
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
}
