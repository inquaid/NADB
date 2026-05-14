void main() {
  final double income = 5000.0;

  final List<Map<String, dynamic>> expenses = [
    {'name': 'Rent', 'amount': 1200},
    {'name': 'Groceries', 'amount': 450},
    {'name': 'Internet', 'amount': 60},
    {'name': 'Entertainment', 'amount': null},
    {'name': 'Gym', 'amount': 50},
  ];

  double totalSpent = 0;

  for (var expense in expenses) {
    final String name = expense['name'] as String;

    final double amount = (expense['amount'] ?? 0.0).toDouble();

    print('$name: \$$amount');
    totalSpent += amount;
  }

  final double remaining = income - totalSpent;

  print('Total Spent: $totalSpent');
  print('Remaining:   $remaining');
}
