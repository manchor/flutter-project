import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final bool isChecked;
  final String itemTitle;
  final ValueChanged<bool?>? checkboxCallback;

  ItemTile(
      {required this.isChecked,
        required this.itemTitle,
        required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}