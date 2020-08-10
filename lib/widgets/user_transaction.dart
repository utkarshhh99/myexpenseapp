import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      amount: 69.99,
      date: DateTime.now(),
      title: 'Shoes',
    ),
    Transaction(
      id: 't2',
      amount: 16.53,
      date: DateTime.now(),
      title: 'Weekly Grocery',
    ),
  ];
  void _newTransaction(String txTitle, double txAmount) {
    final newTx=Transaction(
      id: DateTime.now().toString(),
      amount: txAmount,
      date: DateTime.now(),
      title: txTitle,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_newTransaction),
        TransactionList(_userTransactions,(){}),
      ],
    );
  }
}
