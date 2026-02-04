import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage()));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 10,
            right: 10,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://imgs.search.brave.com/en8GueUwEke4A7ecDjpRnIpFR8Y-WWOEbjzD2xCNTu0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWd2/My5mb3Rvci5jb20v/aW1hZ2VzL2hvbWVw/YWdlLWZlYXR1cmUt/Y2FyZC9mb3Rvci0z/ZC1hdmF0YXIuanBn',
              ),
            ),
          ),

          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'KRISH SAVALIYA',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Flutter developer, flutter developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
