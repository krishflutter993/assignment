import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController controller = TextEditingController();
  final List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Enter task",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                setState(() {
                  tasks.add(controller.text);
                  controller.clear();
                });
              }
            },
            child: const Text("Add Task"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(tasks[index]),
                  onDismissed: (direction) {
                    setState(() {
                      tasks.removeAt(index);
                    });
                  },
                  child: ListTile(title: Text(tasks[index])),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
