import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/Task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (Context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskdata.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskdata.updateTask(task);
            },
            longPressCallback: () {
              taskdata.deleteTask(task);
            },
          );
        },
        itemCount: taskdata.tasks.length,
      );
    });
  }
}
