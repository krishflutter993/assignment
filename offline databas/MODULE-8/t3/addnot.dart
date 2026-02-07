import 'package:ass/offline/module-8/Task-2/t2DB.dart';
import 'package:flutter/material.dart';

class Addnote extends StatefulWidget {
  const Addnote({super.key});

  @override
  State<Addnote> createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  final _addNote = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  MyDb dbHelper = MyDb.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note'), centerTitle: true),
      body: SingleChildScrollView(
        child: Form(
          key: _addNote,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: titleController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please Enter Title!' : null,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  controller: noteController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please Enter Description!' : null,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () async {
                    if (_addNote.currentState!.validate()) {
                      await _insert();
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Add Note'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _insert() async {
    Map<String, dynamic> row = {
      MyDb.title: titleController.text,
      MyDb.description: noteController.text,
    };

    final id = await dbHelper.insertdata(row);
    print("Inserted Note ID: $id");

    titleController.clear();
    noteController.clear();
  }
}
