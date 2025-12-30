import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ResponsiveLayoutPage()));
}


class ResponsiveLayoutPage extends StatefulWidget {
  const ResponsiveLayoutPage({super.key});

  @override
  _ResponsiveLayoutPageState createState() => _ResponsiveLayoutPageState();
}

class _ResponsiveLayoutPageState extends State<ResponsiveLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // First Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red.shade400,
                alignment: Alignment.center,
                child: const Text(
                  'Red',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              // Second Container
              Container(
                width: 150.0,
                height: 100.0,
                color: Colors.green.shade400,
                alignment: Alignment.center,
                child: const Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              // Third Container
              Container(
                width: 120.0,
                height: 100.0,
                color: Colors.blue.shade400,
                alignment: Alignment.center,
                child: const Text(
                  'Blue',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}