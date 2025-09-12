import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {

  final String title;
  final double amount;
  final Widget icon;

  const HeaderCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;

    return  Expanded(
      child:  Card(
          margin: EdgeInsets.all(0), // elimina el margen por defecto en todos los lados
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    SizedBox(width: 4),
                    Text(title, style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 12),
                  ],
                ),
                SizedBox(height: 8),
                Text('\$ $amount', style: TextTheme.titleLarge),
              ],
            ),
          )),
    );
  }
}
