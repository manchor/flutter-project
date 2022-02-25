import 'package:flutter/material.dart';
import 'package:super_market_super_easy/widgets/item_tile.dart';
import 'package:provider/provider.dart';
import 'package:super_market_super_easy/models/my_data.dart';


class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyData>(
      builder: (context, itemData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final item = itemData.items[index];
            return ItemTile(
              itemTitle: item.itemName,
              isChecked: item.isDone,
              checkboxCallback: (checkboxState) {
                itemData.updateItem(item);
              },
            );
          }, itemCount: itemData.items.length,
        );
      },
    );
  }
}


