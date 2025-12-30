import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfiniteList(),
    );
  }
}

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  List<int> items = List.generate(15, (index) => index);

  void loadMore() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      items.addAll(List.generate(10, (index) => items.length + index));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Infinite Scroll")),
      body: ListView.builder(
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index == items.length) {
            loadMore();
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: CircularProgressIndicator(),
              ),
            );
          }
          return ListTile(title: Text("Item ${items[index]}"));
        },
      ),
    );
  }
}
