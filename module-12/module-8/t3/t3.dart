import 'package:ass/module-8/t3/db.dart';
import 'package:flutter/material.dart';

import 'add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NotesList(),
    );
  }
}

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  final dbHelper = MyDb.instance;
  List<Map<String, dynamic>> notesList = [];

  @override
  void initState() {
    super.initState();
    viewNoteData();
  }

  void viewNoteData() async {
    final allRows = await dbHelper.viewNote();
    setState(() {
      notesList = allRows;
    });
  }

  void deleteNoteData(int id) async {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Delete Note"),
        content: const Text("Are you sure you want to delete this note?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              await dbHelper.deleteNote(id);
              Navigator.pop(context);
              viewNoteData();
            },
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: notesList.isEmpty
          ? const Center(child: Text("No Notes Found"))
          : ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                var note = notesList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    title: Text(note['desc'] ?? ""),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () async {
                            bool? updated = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddNote(note: note),
                              ),
                            );
                            if (updated == true) viewNoteData();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => deleteNoteData(note['_id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? added = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNote()),
          );
          if (added == true) viewNoteData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
