import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ImageCarousel(), debugShowCheckedModeBanner: false));
}

class ImageCarousel extends StatefulWidget {
  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  late Timer _timer;

  List images = [
    'assets/p1.png',
    'assets/p2.png',
    'assets/p3.png',
    'assets/p4.png',
    'assets/p5.png',
    'assets/p6.png',
    'assets/p7.png',
    'assets/p8.png',
    'assets/p9.png',
    'assets/p10.png',
    'assets/p11.png',
  ];

  @override
  initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Radha And Krishna",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: PageView.builder(
          controller: _controller,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image.asset(
              images[index],
              height: 300,
              width: 150,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
