import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CounterScreen(), debugShowCheckedModeBanner: false));
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isSwitched ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
          'Counter App\n${_isSwitched ? 'Dark  Mode' : 'Light  Mode'}',
          style: TextStyle(
            fontSize: 20,
            color: _isSwitched ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: _isSwitched ? Colors.black : Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.all(2), // border jaisa spacing
            decoration: BoxDecoration(
              border: Border.all(
                color: _isSwitched
                    ? Colors.white
                    : Colors.black, // Border color change
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                20,
              ), // switch shape ke around curve
            ),
            child: Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.white,
              activeThumbColor: Colors.white,
              activeTrackColor: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Count:',
              style: TextStyle(
                fontSize: 24,
                color: _isSwitched ? Colors.white : Colors.black,
              ),
            ),
            Text(
              '$_count',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  child: Text(
                    '+ increment',
                    style: TextStyle(
                      fontSize: 24,
                      color: _isSwitched ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                  },
                  child: Text(
                    '- decrement',
                    style: TextStyle(
                      fontSize: 24,
                      color: _isSwitched ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _count = 0;
                    });
                  },
                  label: Icon(
                    Icons.refresh,
                    color: _isSwitched ? Colors.white : Colors.black,
                    size: 30,
                  ),
                ),
                Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 16,
                    color: _isSwitched ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
