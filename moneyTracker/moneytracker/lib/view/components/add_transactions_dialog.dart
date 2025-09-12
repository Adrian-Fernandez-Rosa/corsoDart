import 'package:flutter/material.dart';

class AddTransactionsDialog extends StatelessWidget {
  const AddTransactionsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    
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
            child: Text('New Transaction', style: TextStyle(fontSize: 20, color: Colors.teal),),
          ),
        ],
      ),
    );


  }

}