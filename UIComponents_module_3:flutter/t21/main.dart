import 'package:flutter/material.dart';
import 'package:t21/se.dart';

void main() {
  runApp(MaterialApp(home: MyWidget(), debugShowCheckedModeBanner: false));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}
