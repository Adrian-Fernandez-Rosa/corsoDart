import 'package:flutter/material.dart';
import 'package:moneytracker/view/widget/header_card.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
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

          Text('\$ 1,000.00',
              style: TextTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),


          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                HeaderCard(
                  title: 'Income',
                  amount: 1000.00,
                  icon: Icon(Icons.attach_money, 
                    color: Colors.teal,
                    ),
                ),
                SizedBox(width: 12),
                HeaderCard(
                  title: 'Expenses',
                  amount: -500.00,
                  icon: Icon(Icons.money_off, 
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

