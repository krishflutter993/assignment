import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:  MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextStyle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // First Text Widget with specific styling
            Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // spacing

            // Second Text Widget with different styling
            Text(
              'Styling is fun!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepOrange,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
