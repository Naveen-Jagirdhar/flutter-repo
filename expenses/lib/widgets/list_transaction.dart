import 'package:expenses/cards/transaction_card.dart';
import 'package:flutter/material.dart';

import '../classes/transaction.dart';

class ListTransactions extends StatelessWidget {

  List<Transaction> list=[];
  final Function deleteTx;

  ListTransactions(this.list,this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children : list.map((transaction){
          return Card(
            elevation: 8,
            child: TransactionCard(
                amount: transaction.amount,
                title: transaction.title,
                dateTime: transaction.date,
                deleteTx: deleteTx,
                id: transaction.id,
            ),
          );
        }).toList(),
      ),
    );
  }
}
