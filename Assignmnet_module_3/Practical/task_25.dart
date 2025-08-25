// Build a to-do list app where users can add tasks. Use ListView.builder to display the list of tasks and allow each task to be removed
// with a swipe gesture.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ToDoListScreen(), debugShowCheckedModeBanner: false,));
}

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<String> tasks = [];
  TextEditingController taskController = TextEditingController();

  addTask() {
    if(taskController.text.isEmpty) return;
    setState(() {
      tasks.add(taskController.text);
    });
    taskController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: "Enter a task",
                border: OutlineInputBorder()
              ),
              onSubmitted: (_) => addTask(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Dismissible(
                  key: Key(task + index.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      tasks.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task removed")));
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white,),
                  ),
                  child: ListTile(
                    title: Text(task),
                  )
                );
              }
            )
          ),
        ],
      ),
    );
  }
}
