import 'package:flutter/material.dart';

class Screens2 extends StatelessWidget {
  const Screens2({super.key});

  // static String routeName = '/screen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Screens 2'),
        automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('volver a screen 1'),
          ),
        )
    );
  }
}