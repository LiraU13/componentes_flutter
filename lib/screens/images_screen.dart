import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

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

  Card imageCard() {
    // Imagen con Card
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

  Stack imageWeb() {
    // Imagen sin Card
    return Stack(
      children: <Widget>[
        // const Center(
        //     child: CircularProgressIndicator(
        //       backgroundColor: Color.fromARGB(255, 45, 53, 165),
        //       color: Color.fromARGB(255, 130, 188, 253),
        //     ),
        // ),
        const Positioned(
          left: 190,
          bottom: 100,
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 45, 53, 165),
              color: Color.fromARGB(255, 130, 188, 253),
            ),
          ),
        ),
        Center(
          child: SizedBox(
              height: 250,
              width: 360,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://b1659141.smushcdn.com/1659141/wp-content/uploads/2012/06/1968-revology-gt-fastback-highlandgreen-170-01-e1692388740775.jpeg?lossy=1&strip=1&webp=1',
              )),
        ),
        const Positioned(
          left: 190,
          bottom: 100,
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 45, 53, 165),
              color: Color.fromARGB(255, 130, 188, 253),
            ),
          ),
        )
        // El siguiente Container agrega un texto abajo de la imagen, pero no se muestra un fondo como con Card
        // Container(
        //   padding: const EdgeInsets.all(10),
        //   child: Text(
        //     'Mustang Shelby GT500 1968',
        //     style: AppTheme.lightTheme.textTheme.headlineLarge,
        //   ),
        // )
      ],
    );
  }
}
