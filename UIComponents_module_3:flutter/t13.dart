import 'package:flutter/material.dart';

void main() {
  runApp(const MyImageApp());
}

class MyImageApp extends StatelessWidget {
  const MyImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image Switcher',
      home: const ImageSwitcherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageSwitcherScreen extends StatefulWidget {
  const ImageSwitcherScreen({super.key});

  @override
  State<ImageSwitcherScreen> createState() => _ImageSwitcherScreenState();
}

class _ImageSwitcherScreenState extends State<ImageSwitcherScreen> {
  // Two example image URLs
  final List<String> _images = [
    'https://imgs.search.brave.com/tZtTW0hkbffrBveXMMXC-FLe8rg31lFKmy4E_lrk5J8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjEv/OTkwLzE0My9zbWFs/bC9yZWQtc3BvcnQt/Y2FyLWlsbHVzdHJh/dGlvbi1haS1nZW5l/cmF0aXZlLWZyZWUt/cGhvdG8uanBn', // Image 1
    'https://imgs.search.brave.com/JTv7678bKcLK7K2CmKMPSbnJ0RGm4Y91earpB4egGFA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MDg5NzQyMzkzMjAt/MGEwMjk0OTdlODIw/P2l4bGliPXJiLTQu/MS4wJml4aWQ9TTN3/eE1qQTNmREI4TUh4/elpXRnlZMmg4TVRa/OGZHTmhjbnhsYm53/d2ZId3dmSHg4TUE9/PSZmbT1qcGcmcT02/MCZ3PTMwMDA', // Image 2
  ];

  int _currentIndex = 0;

  void _changeImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Switcher App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Network image
            Image.network(
              _images[_currentIndex],
              height: 300,
              width: 400,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Button to change image
            ElevatedButton(
              onPressed: _changeImage,
              child: const Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}
