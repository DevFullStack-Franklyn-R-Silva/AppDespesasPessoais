import "dart:math";

import 'package:flutter/material.dart';
import "../model/transaction.dart";
import "transaction_form.dart";
import "transaction_list.dart";

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: "t1",
      title: "Novo computador",
      value: 1000.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t4",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t5",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t6",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t7",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t8",
      title: "Pen Drive",
      value: 10.76,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = new Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionForm(_addTransaction),
      TransactionList(_transactions),
    ]);
  }
}
