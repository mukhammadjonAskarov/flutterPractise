//import 'package:expansePlanner/widgets/userTransactions.dart';
import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  void submitData() {
    addTx(titleInputController.text, double.parse(amountInputController.text));
  }

  final Function addTx;
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  NewTransactions(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInputController,
              onChanged: (value) {},
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInputController,
              onChanged: (value) {},
              onSubmitted: (_) => submitData,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                (_) => submitData;
              },
            )
          ],
        ),
      ),
    );
  }
}
