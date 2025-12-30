import 'package:flutter/material.dart';

void main() {
  runApp(const AssetImageApp());
}

class AssetImageApp extends StatelessWidget {
  const AssetImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asset Image Example',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const AssetImageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AssetImageScreen extends StatefulWidget {
  const AssetImageScreen({super.key});

  @override
  State<AssetImageScreen> createState() => _AssetImageScreenState();
}

class _AssetImageScreenState extends State<AssetImageScreen> {
  final List<BoxFit> _fitOptions = [
    BoxFit.cover,
    BoxFit.contain,
    BoxFit.fill,
    BoxFit.fitWidth,
    BoxFit.fitHeight,
    BoxFit.none,
  ];

  int _currentFitIndex = 0;

  void _changeFit() {
    setState(() {
      _currentFitIndex = (_currentFitIndex + 1) % _fitOptions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentFit = _fitOptions[_currentFitIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Image.asset Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.grey.shade300,
              child: Image.asset('assets/sample.jpg', fit: currentFit),
            ),
            const SizedBox(height: 20),
            Text(
              'Current BoxFit: ${currentFit.toString().split('.').last}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _changeFit,
              child: const Text('Change BoxFit'),
            ),
          ],
        ),
      ),
    );
  }
}
