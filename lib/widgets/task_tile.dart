import 'package:flutter/material.dart';
import 'package:super_market_super_easy/screens/items_screen.dart';


class TaskTile extends StatelessWidget {


  final String taskTitle;

  TaskTile({required this.taskTitle});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItemsPage(value: taskTitle,)),
      ),
      title: Text(taskTitle),
    );
  }
}