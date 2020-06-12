import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String amount;
  final String title;
  final DateTime dateTime;
  final Function deleteTx;
  final String id;

  TransactionCard({
    this.amount,
    this.title,
    this.dateTime,
    this.deleteTx,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColorDark,
              width: 1,
            ),
          ),
          margin: EdgeInsets.all(12),
          child: Text(
            // ignore: unnecessary_brace_in_string_interps
            '\u20B9$amount',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.title
            ),
            Text(
              DateFormat.yMMMd().format(dateTime),
            ),
          ],
        ),
        Expanded(
          child: IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () => deleteTx(id)),
        )
      ],
    ));
  }
}
