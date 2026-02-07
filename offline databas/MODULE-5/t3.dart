import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/* -------- PROVIDER -------- */

final todoProvider = StateNotifierProvider<TodoNotifier, List<String>>((ref) {
  return TodoNotifier();
});

class TodoNotifier extends StateNotifier<List<String>> {
  TodoNotifier() : super([]) {
    loadTodos();
  }

  void addTodo(String task) {
    state = [...state, task];
    saveTodos();
  }

  Future<void> saveTodos() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('todos', state);
  }

  Future<void> loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getStringList('todos') ?? [];
  }
}

/* -------- MAIN -------- */

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}

/* -------- TODO SCREEN -------- */

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "Enter task"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(todoProvider.notifier).addTodo(controller.text);
                controller.clear();
              }
            },
            child: const Text("Add Task"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index]),
                  trailing: IconButton(
                    onPressed: () {
                      final updatedTodos = List<String>.from(todos)
                        ..removeAt(index);
                      ref.read(todoProvider.notifier).state = updatedTodos;
                      ref.read(todoProvider.notifier).saveTodos();
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
