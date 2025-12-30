import 'package:flutter/material.dart';

class Gridviewex extends StatefulWidget {
  const Gridviewex({super.key});

  @override
  State<Gridviewex> createState() => _GridviewexState();
}

class _GridviewexState extends State<Gridviewex> {
  List<String> techimg = [
    "https://img.icons8.com/color/512/flutter.png",
    "https://cdn3d.iconscout.com/3d/free/preview/free-java-3d-icon-png-download-7578017.png",
    "https://study.com/cimages/videopreview/059tmsbnjx.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png",
    "https://img.icons8.com/color/512/flutter.png",
    "https://cdn3d.iconscout.com/3d/free/preview/free-java-3d-icon-png-download-7578017.png",
    "https://study.com/cimages/videopreview/059tmsbnjx.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: techimg.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(techimg[index], fit: BoxFit.contain),
            );
          },
        ),
      ),
    );
  }
}
