import 'package:flutter/material.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( //header
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
       color:  Colors.grey,
      ),
      child: const Text("Prueba"),
    );
  }
}