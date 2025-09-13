import 'package:flutter/material.dart';
import 'package:moneytracker/view/components/add_transactions_dialog.dart';
import 'package:moneytracker/view/components/home_header.dart';
import 'package:moneytracker/view/components/transactions_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const SafeArea(
        // no interfiera con el encabezado ni con el footer
        child: Column(children: [
          homeHeader(), // componente header
          TransactionsList(), // componente lista de transacciones
        ]),
      ),

        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          // Mostrar un botton sheet para agregar una nueva transacción
            showModalBottomSheet(
              context: context, 
            isScrollControlled: true, // para que el modal ocupe toda la pantalla
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(51.0))),
              builder:  (context) {
              return AddTransactionsDialog();
            });

        },child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  
  }
}

