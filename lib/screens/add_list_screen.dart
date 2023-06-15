import 'package:flutter/material.dart';
//import 'package:super_market_super_easy/models/lists.dart';
import 'package:provider/provider.dart';
import 'package:super_market_super_easy/models/my_data.dart';


class AddListScreen extends StatefulWidget {
  const AddListScreen({Key? key}) : super(key: key);


  @override
  State<AddListScreen> createState() => _AddListScreenState();
}

class _AddListScreenState extends State<AddListScreen> {

  late String newListTitle;

  @override
  Widget build(BuildContext context) {


    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
                const Text(
              'Add List',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newList) {
                newListTitle = newList;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<MyData>(context, listen: false).addList(newListTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




// onPressed: () {
// Provider.of<MyData>(context)
//     .addList(newListTitle);
// Navigator.pop(context);
// },
// child: Text(
// 'Add',
// style: TextStyle(
// color: Colors.black,
// ),
// ),
