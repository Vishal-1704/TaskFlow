import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  late String newTaskTittle;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTittle = newText;
              },
            ),
            SizedBox(height: 20),
            // TextButton(
            //   onPressed: () {
            //     // Add your onPressed code here!
            //   },
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.blue,
            //   ),
            //   child: Text(
            //     'Add',
            //     style: TextStyle(
            //       color: Colors.white, // Text color
            //       fontSize: 18.0,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50.0, // Set height to make it square
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context).addTask(newTaskTittle);
                  // Add your onPressed code here!
                },
                child: Text('Add'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
