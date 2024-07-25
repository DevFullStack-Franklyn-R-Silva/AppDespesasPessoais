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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionList(_transactions),
      TransactionForm(),
    ]);
  }
}
