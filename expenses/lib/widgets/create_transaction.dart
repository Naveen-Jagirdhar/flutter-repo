import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateTransaction extends StatefulWidget {
  final Function onButtonClick;

  CreateTransaction(this.onButtonClick);

  @override
  _CreateTransactionState createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  DateTime selectedDate;

  void submit() {
    var title = titleController.text;
    var amount = amountController.text;

    if (title.isEmpty || amount.isEmpty || selectedDate == null) {
      return;
    }
    widget.onButtonClick(
      title,
      amount,
      selectedDate
    );

    Navigator.of(context).pop();
  }

  // code for displaying datepicker
  void displayDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Container(
              child: Text('Create Transaction'),
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            onSubmitted: (_) => submit(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submit(),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  selectedDate == null ? 'select date' :  DateFormat.yMMMd().format(selectedDate),
                ),
                FlatButton(
                  child: Icon(Icons.calendar_today),
                  onPressed: displayDatePicker,
                )
              ],
            ),
          ),
          RaisedButton(
            child: Text('Submit Transaction'),
            textColor: Theme.of(context).textTheme.button.color,
            color: Theme.of(context).primaryColor,
            onPressed: submit,
          ),
        ],
      ),
    );
  }
}
