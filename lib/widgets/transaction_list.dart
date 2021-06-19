import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class TransactionList  extends StatelessWidget {

  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return     Column(children: transactions.map((tx) {
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
