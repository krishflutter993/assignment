import 'package:ass/modul-4/t1/three.dart';
import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Two Screen"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 18),
            const Text('This is Product List Screen'),
            const SizedBox(height: 18),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThreeScreen()),
                );
              },
              child: const Text('Go to Details Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
