import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Task41()));
}

class Task41 extends StatefulWidget {
  const Task41({super.key});

  @override
  State<Task41> createState() => _Task41State();
}

class _Task41State extends State<Task41> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating Bar Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Column(
          children: [
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              itemCount: 5,
              itemSize: 35,
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (value) {
                Fluttertoast.showToast(msg: '$value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
