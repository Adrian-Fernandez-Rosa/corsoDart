import 'package:flutter/material.dart';
import 'package:navigation/routes/Routes.dart';
// import 'package:navigation/screens/screen2.dart';

class Screens1 extends StatelessWidget {
  const Screens1({super.key});

// Propieta dalla clase
  static const String routeName = '/'; // <-- Agrega esta línea

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Screens 1')
        
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>       const Screens2(),));
              Navigator.pushNamed(context, Routes.screen2);
           
            },
            child: const Text('ir a la Screens 2'),
          ),
        )
    );
  }
}