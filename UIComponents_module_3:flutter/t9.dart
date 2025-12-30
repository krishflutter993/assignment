import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: CalculatorHome(), debugShowCheckedModeBanner: false),
  );
}

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String _display = '';
  String _input = '';
  double _firstOperand = 0;
  String _operator = '';

  void _buttonPressed(String value) {
    setState(() {
      if (value == 'C') {
        _input = '';
        _display = '';
        _firstOperand = 0;
        _operator = '';
      } else if (value == '+' || value == '-' || value == '×' || value == '÷') {
        _firstOperand = double.tryParse(_input) ?? 0;
        _operator = value;
        _input = '';
      } else if (value == '=') {
        double secondOperand = double.tryParse(_input) ?? 0;
        double result = 0;

        switch (_operator) {
          case '+':
            result = _firstOperand + secondOperand;
            break;
          case '-':
            result = _firstOperand - secondOperand;
            break;
          case '×':
            result = _firstOperand * secondOperand;
            break;
          case '÷':
            result = secondOperand != 0 ? _firstOperand / secondOperand : 0;
            break;
        }

        _display = result.toString();
        _input = result.toString();
        _operator = '';
      } else {
        _input += value;
        _display = _input;
      }
    });
  }

  Widget _buildButton(String text, {Color? color}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.blueGrey,

            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          onPressed: () => _buttonPressed(text),
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator')),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(bottom: 300)),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                  color: Colors.black12,
                  child: Text(
                    _display,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    '7',
                    '8',
                    '9',
                    '÷',
                  ].map((e) => _buildButton(e)).toList(),
                ),
                Row(
                  children: [
                    '4',
                    '5',
                    '6',
                    '×',
                  ].map((e) => _buildButton(e)).toList(),
                ),
                Row(
                  children: [
                    '1',
                    '2',
                    '3',
                    '-',
                  ].map((e) => _buildButton(e)).toList(),
                ),
                Row(
                  children: [
                    '0',
                    'C',
                    '=',
                    '+',
                  ].map((e) => _buildButton(e)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
