import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TaskManager(), debugShowCheckedModeBanner: false));
}

class TaskManager extends StatefulWidget {
  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  
  List tasks = [];
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      labelText: "Enter task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (taskController.text.isNotEmpty) {
                      setState(() {
                        tasks.add({'text': taskController.text, 'done': false});
                      });
                      taskController.clear();
                    }
                  },
                  child: Text("Add"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: tasks.isEmpty
                  ? Center(child: Text("No tasks"))
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text(
                            tasks[index]['text'],
                            style: TextStyle(
                              decoration: tasks[index]['done']
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                          value: tasks[index]['done'],
                          onChanged: (val) {
                            setState(() {
                              tasks[index]['done'] = val;
                            });
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
