import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: NavigatorDrawer(), debugShowCheckedModeBanner: false),
  );
}

class NavigatorDrawer extends StatefulWidget {
  const NavigatorDrawer({super.key});

  @override
  State<NavigatorDrawer> createState() => _NavigatorDrawerState();
}

class _NavigatorDrawerState extends State<NavigatorDrawer> {
  int _selectedIndex = 0;
  List images = [
    'https://imgs.search.brave.com/XJCGSRCxh3pZYJHtqKAS6ewzgpTfqrzGE0jVQ4sAsuA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20val85NW8v/TUFHNTBWal85NW8v/MS90bC9jYW52YS1o/b21lLWljb24tTUFH/NTBWal85NW8ucG5n',
    'https://imgs.search.brave.com/dmJd9T_D2p0xQ9FicDp-KgsFLyIlp9MrOhIZEoiuBss/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuaWNvbi1pY29u/cy5jb20vODI3L1BO/Ry85Ni9zZWFyY2hf/aWNvbi1pY29ucy5j/b21fNjY1MjMucG5n',
    'https://imgs.search.brave.com/SlaMJT4XkYe-xWEJW2dpVldS2rzSwUPVHf3GEm57e4I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjIv/ODc2LzM1OS9zbWFs/bC9zb2NpYWwtbWVk/aWEtdXNlci0zZC1j/YXJ0b29uLWlsbHVz/dHJhdGlvbi1zcGVl/Y2gtYnViYmxlLXdp/dGgtaW50ZXJuZXQt/aWNvbi1wbmcucG5n',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigator Drawer'), centerTitle: true),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Center(
        child: Image.network(
          images[_selectedIndex],
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
