import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TASK 6')),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(20.00),
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40.00,
                      backgroundImage: AssetImage('assets/k.png'),
                    ),
                    SizedBox(width: 10.00),
                    Column(
                      children: [
                        Text(
                          'john doe',
                          style: TextStyle(
                            fontSize: 20.00,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 15.00,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
