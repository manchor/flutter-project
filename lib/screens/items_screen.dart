import 'package:flutter/material.dart';
import 'package:super_market_super_easy/screens/add_item_screen.dart';
import 'package:super_market_super_easy/widgets/items_list.dart';


class ItemsPage extends StatefulWidget {

  final String value;

  const ItemsPage({Key? key, required this.value}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
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
                      child: const AddItemScreen(),
                    )));
          }),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(widget.value),
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
                child: const ItemList(),
              )),
        ],
      ),
    );
  }
}
