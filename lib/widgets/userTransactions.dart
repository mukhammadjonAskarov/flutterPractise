import 'package:flutter/material.dart';
import 'package:expansePlanner/widgets/transaction_list.dart';
import 'package:expansePlanner/widgets/newTransactions.dart';
import 'package:expansePlanner/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        transactionTitle: 'New Shoes',
        expanseAmount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        transactionTitle: 'Weekly Groceries',
        expanseAmount: 16.56,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        transactionTitle: txTitle,
        expanseAmount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransactions(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
