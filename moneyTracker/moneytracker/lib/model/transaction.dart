class Transaction {
  final TransactionType type; // Expense or Income
  final double amount;
  final String description;

  Transaction({
    required this.type,
    required this.amount, 
    required this.description
    });
}

enum TransactionType { expense, income }