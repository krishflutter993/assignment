import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* -------- PROVIDER -------- */

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}

/* -------- MAIN -------- */

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

/* -------- HOME SCREEN -------- */

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Counter")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CounterText(), SizedBox(height: 20), CounterButtons()],
        ),
      ),
    );
  }
}

/* -------- COUNTER DISPLAY WIDGET -------- */

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Text(
      "Count: ${counter.count}",
      style: const TextStyle(fontSize: 28),
    );
  }
}

/* -------- BUTTONS WIDGET -------- */

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: counter.decrement, child: const Text("-")),
        const SizedBox(width: 20),
        ElevatedButton(onPressed: counter.increment, child: const Text("+")),
      ],
    );
  }
}
