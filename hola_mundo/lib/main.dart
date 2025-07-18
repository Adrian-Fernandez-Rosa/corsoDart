import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: const Scaffold(
        body: Stack(
          children: [
                   Image(image: AssetImage('assets/images/avion.png')),
            Text(' aaasa', style: TextStyle(fontSize: 140, color: Colors.red),
            ),
       
              // Image
        
          ],
        ),
      ),
    );
  }
}
