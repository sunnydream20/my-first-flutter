import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: const Text(
          'This is the second screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
