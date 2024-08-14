import 'package:character_editor/components/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowList extends StatelessWidget {
  final int counter;
  final String title;
  RowList({required this.counter, required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$counter",
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(title,
            style: TextStyle(
              fontSize: 18,
            )),
        AddButton(idName: title)
      ],
    );
  }
}
