import 'package:flutter/material.dart';
import 'transaction_detail.dart';

class TransactionHistoryPage extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"provider": "Nethome", "date": "15 Feb 2024 10:32", "amount": "Rp455.000"},
    {"provider": "Bizzcom", "date": "14 Feb 2024 16:12", "amount": "Rp245.000"},
    {"provider": "Bizzcom", "date": "16 Jan 2024 11:21", "amount": "Rp245.000"},
    {"provider": "Nethome", "date": "13 Jan 2024 09:25", "amount": "Rp455.000"},
    {"provider": "Bizzcom", "date": "14 Dec 2024 17:45", "amount": "Rp245.000"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text(transaction['provider']!),
            subtitle: Text(transaction['date']!),
            trailing: Text(transaction['amount']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionDetailPage(
                    provider: transaction['provider']!,
                    date: transaction['date']!,
                    amount: transaction['amount']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
