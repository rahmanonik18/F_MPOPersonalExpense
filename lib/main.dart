import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';


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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Text("Chart !"),
                    elevation: 10,
                  ),
              )  ,
              UserTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
