import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_market_super_easy/screens/tasks_screen.dart';
import 'package:super_market_super_easy/models/my_data.dart';
import 'package:super_market_super_easy/models/lists.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}




// lists: List.generate(20, (index) => MyList(name: '$index')),
