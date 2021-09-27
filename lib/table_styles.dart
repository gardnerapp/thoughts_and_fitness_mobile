import 'package:flutter/material.dart';

Widget tableCell(String data) {
  return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(padding: EdgeInsets.all(5.0), child:Text(
        data,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0),
      )));
}
