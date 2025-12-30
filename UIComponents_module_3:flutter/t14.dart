import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GalleryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  // List of image URLs
  final List<String> imageUrls = const [
    'https://picsum.photos/id/1011/400/400',
    'https://picsum.photos/id/1012/400/400',
    'https://picsum.photos/id/1013/400/400',
    'https://picsum.photos/id/1015/400/400',
    'https://picsum.photos/id/1016/400/400',
    'https://picsum.photos/id/1018/400/400',
    'https://picsum.photos/id/1020/400/400',
    'https://picsum.photos/id/1021/400/400',
    'https://picsum.photos/id/1025/400/400',
    'https://picsum.photos/id/1027/400/400',
    'https://picsum.photos/id/1035/400/400',
    'https://picsum.photos/id/1043/400/400',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Gallery'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of columns
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Center(child: Icon(Icons.error, color: Colors.red)),
              ),
            );
          },
        ),
      ),
    );
  }
}
