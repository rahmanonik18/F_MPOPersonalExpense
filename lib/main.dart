
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
import './widgets/chart_list.dart';


main() {
  runApp(MyApp());
}

String titleInput;
String amountInput;

class MyApp extends StatelessWidget {
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
            ChartList(),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
