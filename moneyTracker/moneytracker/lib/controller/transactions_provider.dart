import 'package:flutter/material.dart';
import 'package:moneytracker/model/transaction.dart';

class TransactionsProvider extends ChangeNotifier {
  final List<Transaction> _transactions = [
    Transaction(
    type: TransactionType.income,
     amount: 1000.00,
      description: 'Salary'
      ),

    Transaction(
    type: TransactionType.expense,
     amount: -500.00,
      description: 'Rent'
      ),

  ];

  List<Transaction> get transactions => _transactions; 

  double getTotalBalance() {
    return _transactions
       .where((transactions) => transactions.type == TransactionType.income)
      //  .map((transactions) => transactions.amount)
      //  .fold(0, (a, b) => a + b);

      .fold(0, (sum, b) => sum + b.amount);
       }

  double gentBalance() {
    return _transactions
       .where((transactions) => transactions.type == TransactionType.expense)
      //  .map((transactions) => transactions.amount)
      //  .fold(0, (a, b) => a + b);

      .fold(0, (sum, b) => sum + b.amount);
       }

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    notifyListeners();
  }


  
}