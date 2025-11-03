import 'package:flutter/material.dart';
import '../utils/shared_prefs.dart';
import 'login_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) async {
              if (value == 'Logout') {
                await SharedPrefs.logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(value)));
              }
            },
            itemBuilder: (_) => const [
              PopupMenuItem(value: 'About Us', child: Text('About Us')),
              PopupMenuItem(value: 'Contact Us', child: Text('Contact Us')),
              PopupMenuItem(value: 'Logout', child: Text('Logout')),
            ],
          ),
        ],
      ),
      body: const Center(child: Text('Welcome to Dashboard!')),
    );
  }
}
