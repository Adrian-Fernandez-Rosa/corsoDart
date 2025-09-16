import 'package:flutter/material.dart';
import 'package:moneytracker/controller/transactions_provider.dart';
import 'package:provider/provider.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // final provider = Provider.of<TransactionsProvider>(context);
    // final transactions = provider.transactions;
    final transactions = Provider.of<TransactionsProvider>(context).transactions;
    // aplicando teoria Spring

    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: 11,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(Icons.money),
              title: Text('Sample Transaction'),
              subtitle: Text('Transaction amount'), 
              trailing: Icon(Icons.delete),
              
            );
          },)
      ),
    );
  }
}