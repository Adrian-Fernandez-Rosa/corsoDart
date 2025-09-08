import 'package:flutter/material.dart';
import 'package:moneytracker/view/components/home_header.dart';
import 'package:moneytracker/view/components/transactions_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        // no interfiera con el encabezado ni con el footer
        child: Column(children: [
          homeHeader(), // componente header
          TransactionsList(), // componente lista de transacciones
        ]),
      ),
    );
  }
}

