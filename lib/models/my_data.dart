import 'package:flutter/foundation.dart';
import 'package:super_market_super_easy/models/lists.dart';
import 'package:super_market_super_easy/models/item.dart';
import 'package:super_market_super_easy/models/categories.dart';

class MyData extends ChangeNotifier {
  List<MyList> lists = [];
  List<Item> items = [];
  // List<MyCategory> categories = [
  //   MyCategory(catName: 'Λαχανικά'),
  //   MyCategory(catName: 'Γαλακτοκομικά'),
  // ];

  void addList(String newListTitle) {
    final list = MyList(name: newListTitle);
    lists.add(list);
    notifyListeners();
  }

  void addItem(String newItemTitle) {
    final list = Item(itemName: newItemTitle);
    items.add(list);
    notifyListeners();
  }

  // void addCategory(String newCategoryTitle) {
  //   final list = MyCategory(catName: newCategoryTitle);
  //   categories.add(list);
  //   notifyListeners();
  // }

  void updateItem(Item item) {
    item.toggleDone();
    notifyListeners();
  }
}
