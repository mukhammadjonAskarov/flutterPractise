import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String transactionTitle;
  final double expanseAmount;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.transactionTitle,
      @required this.expanseAmount,
      @required this.date});
}
