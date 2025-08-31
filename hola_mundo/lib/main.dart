import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: const Scaffold(
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage("https://img.freepik.com/foto-gratis/fondo-planeta-tierra_23-2150564685.jpg"),
              // image: AssetImage('assets/images/avion.png'),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 100,
              child: Text(
                'HOLA MUNDO',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
