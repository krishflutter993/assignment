import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Task42(), debugShowCheckedModeBanner: false));
}

class Task42 extends StatefulWidget {
  @override
  State<Task42> createState() => _Task42State();
}

class _Task42State extends State<Task42> {
  var progress = 0;

  @override
  initState() {
    super.initState();
    increaseProgress();
  }

  increaseProgress() async {
    while (progress < 80) {
      await Future.delayed(Duration(milliseconds: 100));
      setState(() {
        progress++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Easy Progress Bar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 250 * (progress / 100),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Progress: ${progress.toStringAsFixed(0)}%",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
