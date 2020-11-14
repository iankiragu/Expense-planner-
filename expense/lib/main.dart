import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //transactions is the name of the actual list
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      amount: 50.00,
      title: 'New shoes',
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 62.00,
      title: 'Guitar',
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluter App'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Container(width: double.infinity, child: Text('Chart')),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(child: Text(tx.title));
              }).toList(),
            )
          ]),
    );
  }
}
