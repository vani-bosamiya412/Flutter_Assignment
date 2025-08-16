// Make a simple task manager app with a form to add tasks. Use CheckboxListTile widgets to mark tasks as completed.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TaskManagerApp(), debugShowCheckedModeBanner: false,));
}

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  TextEditingController task = TextEditingController();
  List<Map<String, dynamic>> tasks = [];  // { "title": "Task1", "done": false }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manager"),
        backgroundColor: Colors.purpleAccent.shade100,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: task,
                    decoration: InputDecoration(
                      hintText: "Enter Task...",
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: addTask,
                  child: Text("Add", style: TextStyle(fontSize: 18),)
                ),
              ],
            ),
            SizedBox(width: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(tasks[index]["title"], style: TextStyle(decoration: tasks[index]["done"] ? TextDecoration.lineThrough : TextDecoration.none),),
                    value: tasks[index]["done"],
                    onChanged: (value) => toggleTask(index, value),
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }

  toggleTask(int index, bool? value) {
    setState(() {
      tasks[index]["done"] = value ?? false;
    });
  }

  addTask() {
    if(task.text.isEmpty) return;

    setState(() {
      tasks.add({"title": task.text, "done": false});
      task.clear();
    });
  }
}
