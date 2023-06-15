import 'package:flutter/material.dart';
import 'package:super_market_super_easy/widgets/tasks_list.dart';
import 'package:super_market_super_easy/screens/add_list_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:super_market_super_easy/models/my_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key, lists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const AddListScreen(),
                    )));
          }),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Super',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Market \n  Easy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'My Lists',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 120.0),
            child: const TasksList(),
          )),
        ],
      ),
    );
  }
}
