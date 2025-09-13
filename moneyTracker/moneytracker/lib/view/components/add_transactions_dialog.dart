import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransactionsDialog extends StatefulWidget {
  const AddTransactionsDialog({super.key});

  @override
  State<AddTransactionsDialog> createState() => _AddTransactionsDialogState();
}

class _AddTransactionsDialogState extends State<AddTransactionsDialog> {
     int? typeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

 
    


    return  SizedBox(
      height: 680,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 6,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('New Transaction', style: TextStyle(fontSize: 20, color: Colors.teal,  fontWeight: FontWeight.bold,),),
          ),
          CupertinoSlidingSegmentedControl(
            groupValue: typeIndex,
            children: const {
            0: Text('Expense'),
            1: Text('Income'),
          }, onValueChanged: (value) {
            setState(() {
            typeIndex = value;
              
            });
          }),

          const SizedBox(height: 20,),
          // Text("Amount"), style: textTheme.bodySmall.copyWidth(color: Colors.teal),
          Text("AMOUNT", style: textTheme.bodySmall!.copyWith(color: Colors.teal),),

          TextField(
            inputFormatters: [CurrencyTextInputFormatter.currency(symbol: '\$')],
            textAlign: TextAlign.center,
            decoration: const InputDecoration.collapsed(hintText: '\$ 0.00'),
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );


  }
}