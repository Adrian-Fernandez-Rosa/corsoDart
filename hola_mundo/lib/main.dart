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
              image: AssetImage('assets/images/avion.png'),
             // fit: BoxFit.cover,
            ),
            Positioned(
              top: 300,
              child: Text(
                'adasa',
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
