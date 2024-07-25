import 'package:despesas_pessoais/model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.blue,
                  child: Text("Gráfico"),
                  elevation: 5,
                ),
              ),
              Column(
                children: _transactions.map((tr) {
                  return Card(
                    child: Text(tr.title),
                  );
                }).toList(),
              )
            ]));
  }
}
