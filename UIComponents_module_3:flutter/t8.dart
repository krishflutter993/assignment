import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  List names = [
    'Alice Smith',
    'Bob Johnson',
    'Charlie Brown',
    'David Lee',
    'Eve Davis',
    'Frank Miller',
    'Grace Wilson',
    'Heidi Moore',
    'Ivan Taylor',
    'Judy White',
    'Kelly Green',
    'Liam King',
    'Mia Hall',
    'Noah Wright',
    'Olivia Scott',
    'Peter Adams',
    'Quinn Baker',
    'Rachel Turner',
    'Sam Carter',
    'Tina Phillips',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder Example")),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("${names[index]}"),
              onTap: () {
                print("${names[index]}");
              },
            );
          },
        ),
      ),
    );
  }
}
