import 'package:flutter/material.dart';
import '../model/transaction.dart';

class NewTransaction extends StatelessWidget {

  final titleController =  TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:<Widget> [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              //onChanged: (val) {titleInput = val;},
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              //onChanged: (val)=> amountInput = val,
            ),

            // ignore: deprecated_member_use
            Container(
              margin: EdgeInsets.all(10),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: (){
                  print(titleController.text);
                  print(amountController.text);
                },
                child: Text("Add Transaction"),
                textColor: Colors.purpleAccent,
              ),
            )

          ],
        ),
      ),
    );
  }
}
