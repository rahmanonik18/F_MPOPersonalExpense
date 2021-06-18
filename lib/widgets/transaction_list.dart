import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList  extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}
class _TransactionListState extends State<TransactionList>  {
  final List<Transaction> _userTransaction =[
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
    return     Column(children: _userTransaction.map((tx) {
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
    }).toList(),
    );
  }
}
