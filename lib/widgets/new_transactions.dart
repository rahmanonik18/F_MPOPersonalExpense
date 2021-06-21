import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransaction extends StatelessWidget {

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {

    final enteredtitle = titleController.text;
    final enteredamount = double.parse(amountController.text);
    if (enteredtitle.isEmpty || enteredamount <0) {
      return;
    }
    addTx(enteredtitle, enteredamount);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              //onChanged: (val) {titleInput = val;},
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
              onSubmitted: (_) => submitData(),
              //onChanged: (val)=> amountInput = val,
            ),
            // ignore: deprecated_member_use
            Container(
              margin: EdgeInsets.all(10),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: submitData,
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
