import 'package:ass/module-8/t3/db.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  final Map<String, dynamic>? note;

  const AddNote({super.key, this.note});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final dbHelper = MyDb.instance;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController noteDesc = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      noteDesc.text = widget.note!['desc'];
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isEdit = widget.note != null;

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? "Edit Note" : "Add Note")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: noteDesc,
                validator: (value) => value == null || value.isEmpty
                    ? "Description is empty"
                    : null,
                decoration: const InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (isEdit) {
                      await dbHelper.updateNote(widget.note!['_id'], {
                        MyDb.columnDesc: noteDesc.text,
                      });
                    } else {
                      await dbHelper.insertNote({
                        MyDb.columnDesc: noteDesc.text,
                      });
                    }
                    Navigator.pop(context, true);
                  }
                },
                child: Text(isEdit ? "Update" : "Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
