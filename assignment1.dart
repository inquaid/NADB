void main() {
  final double income = 5000.0;

  final List<Map<String, dynamic>> expenses = [
    {'name': 'Rent', 'category': 'Housing', 'amount': 1200.0},
    {'name': 'Groceries', 'category': 'Food', 'amount': 450.0},
    {'name': 'Internet', 'category': 'Utilities', 'amount': 60.0},
    {'name': 'Concert Tickets', 'category': 'Entertainment', 'amount': null}, // Null amount
    {'name': 'Gym', 'category': 'Health', 'amount': 50.0},
    {'name': 'Subway Pass', 'category': 'Transport', 'amount': 120.0},
  ];

  double totalSpent = 0;
  
  Map<String, double> expensesByCategory = {};

  print('--- EXPENSE LOG ---');
  for (var expense in expenses) {
    final String name = expense['name'] as String;
    final String category = expense['category'] as String;

    final double amount = (expense['amount'] ?? 0.0).toDouble();

    totalSpent += amount;

    expensesByCategory[category] = (expensesByCategory[category] ?? 0.0) + amount;

    print('\$${amount.toStringAsFixed(2).padRight(8)} | $name ($category)');
  }

  final double remaining = income - totalSpent;
  final double savingsPercentage = (remaining / income) * 100;

  print('\n--- CATEGORY BREAKDOWN ---');
  expensesByCategory.forEach((category, amount) {
    print('${category.padRight(15)}: \$${amount.toStringAsFixed(2)}');
  });

  print('\n--- FINANCIAL SUMMARY ---');
  print('Total Income:      \$${income.toStringAsFixed(2)}');
  print('Total Expenses:    \$${totalSpent.toStringAsFixed(2)}');
  print('Remaining Balance: \$${remaining.toStringAsFixed(2)}');
  print('Savings Rate:      ${savingsPercentage.toStringAsFixed(1)}%');
}