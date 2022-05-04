import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) => titleInput = val,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) => amountInput = double.parse(val),
              controller: amountController,
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
