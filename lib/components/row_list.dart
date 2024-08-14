import 'package:flutter/material.dart';

class RowList extends StatefulWidget {
  final int counter;
  final String title;
  const RowList({super.key, required this.counter, required this.title});

  @override
  State<RowList> createState() => _RowListState();
}

class _RowListState extends State<RowList> {
  late int value;
  @override
  void initState() {
    // TODO: implement initState
    value = widget.counter;
    super.initState();
  }

  void onPressed() {
    setState(() {
      value++;
      print(value);
    });
  }

  _RowListState();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$value",
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(widget.title,
            style: TextStyle(
              fontSize: 18,
            )),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
              iconColor: WidgetStatePropertyAll<Color>(Colors.white),
              iconSize: WidgetStatePropertyAll<double>(15)),
          onPressed: onPressed,
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
