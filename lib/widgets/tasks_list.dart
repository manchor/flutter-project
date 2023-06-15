import 'package:flutter/material.dart';
import 'package:super_market_super_easy/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:super_market_super_easy/models/my_data.dart';


class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyData>(
      builder: (context, listData, child){
        return ListView.builder(itemBuilder: (context, index){
          return TaskTile(
            taskTitle: listData.lists[index].name,
          );
        },
          itemCount: listData.lists.length,
        );
      },
    );
  }
}