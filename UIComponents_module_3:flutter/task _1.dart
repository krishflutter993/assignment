import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HelloWorldScreen(), debugShowCheckedModeBanner: false),
  );
}

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello Flutter App')),
      body: const Center(
        child: Text('Hello, Flutter!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
