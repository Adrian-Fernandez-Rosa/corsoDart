import 'package:flutter/material.dart';
import 'package:navigation/screens/screens1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screens1()
      );
   
    
  }
 } 