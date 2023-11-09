import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  ResultScreen(this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculation Result'),
      ),
      body: Center(
        child: Text(
          'Result: $result',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
