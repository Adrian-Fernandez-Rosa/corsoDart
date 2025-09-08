import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded( // Toma todo el espacio disponible
      child: Container(
          height: 200,
          decoration: const BoxDecoration(
          color:  Colors.white,
          ),
        ),
    );
  }
}
