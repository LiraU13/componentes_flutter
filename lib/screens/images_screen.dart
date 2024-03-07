import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
      ),
    );
  }

  Card imageCard() { // Imagen con Card
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/images2.jpg')),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Mustang Shelby GT500 2023',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageWeb() { // Imagen sin Card
    return Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Column(
              children: [
                Image.network(
                  'https://b1659141.smushcdn.com/1659141/wp-content/uploads/2012/06/1968-revology-gt-fastback-highlandgreen-170-01-e1692388740775.jpeg?lossy=1&strip=1&webp=1',
                  height: 170,
                ),
                // El siguiente Container agrega un texto abajo de la imagen, pero no se muestra un fondo como con Card
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: Text(
                //     'Mustang Shelby GT500 1968',
                //     style: AppTheme.lightTheme.textTheme.headlineLarge,
                //   ),
                // )
              ],
            )));
  }
}
