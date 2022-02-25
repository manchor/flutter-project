class Item {
  final String itemName;
  bool isDone;

  Item({required this.itemName, this.isDone = false});

  void toggleDone () {
    isDone = !isDone;
  }
}