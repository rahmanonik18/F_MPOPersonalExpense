
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions =[
    Transaction(
      id: 'a1',
      title: 'New Shoes',
      amount: 200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'b1',
      title: 'New Shirts',
      amount: 300.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'c1',
      title: 'New Pants',
      amount: 400.00,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.lightBlueAccent,
                child: Text("Chart !"),
                elevation: 10,
              ),
            ),
            Card(child: Column(
              children:<Widget> [

              ],
            ),
            ),
            Column(children: transactions.map((tx) {
              return Card(
                  child: Row(
                    children:<Widget> [
                      Container(
                        margin:EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        padding:EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                        Text(
                           '${tx.title}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                            DateFormat.yMd().add_jm().format(tx.date),
                            ),
                      ],)
                    ],
                  )
              );
            }).toList(),),
          ],
        ),
      ),
    );
  }
}
