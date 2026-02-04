import 'package:ass/modul-4/t1/two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: OneScreen(), debugShowCheckedModeBanner: false));
}

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Module 4"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TwoScreen()),
          ),
          child: const Text("Go to Two The ProductListScreen"),
        ),
      ),
    );
  }
}
