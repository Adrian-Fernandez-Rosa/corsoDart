import 'package:flutter/material.dart';
import 'package:moneytracker/controller/transactions_provider.dart';
import 'package:moneytracker/view/widget/header_card.dart';
import 'package:provider/provider.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;

    final provider = Provider.of<TransactionsProvider>(context);
    final balance = provider.getBalance();
    final incomes = provider.getTotalIncomes();
    final expenses = provider.getTotalExpenses();

    return Container( //header
      // height: 150,
      width: double.infinity, // ocupa todo el ancho
      decoration: const BoxDecoration(
      //  color:  Colors.grey,
      ),
      child: Column(
      children: [
        const SizedBox(height: 13), // espacio superior
        Text(
          'MONEY TRACKER',
         style: 
         TextTheme.titleSmall!.copyWith(  //  El ! le dice a Dart: "confía en mí, no es null".
          fontWeight: FontWeight.bold,
          color: Colors.teal.shade900)
        
         ),
          const SizedBox(height: 12), // espacio entre textos
          Text('Balance:',
              style: TextTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.5))),

          Text(
              '\$${balance.toStringAsFixed(2)}',
              style: TextTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),


          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                HeaderCard(
                  title: 'Incomes',
                  amount: incomes,
                  icon: const Icon(Icons.attach_money, 
                    color: Colors.teal,
                    ),
                ),
                const SizedBox(width: 12),
                HeaderCard(
                  title: 'Expenses',
                  amount: -expenses,
                  icon: const Icon(Icons.money_off, 
                    color: Colors.red,
                    ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

