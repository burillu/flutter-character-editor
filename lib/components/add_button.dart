import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String? idName;

  AddButton({this.idName}) {}

  void onPressed() {
    print("pressed $idName");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}
