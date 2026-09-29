import 'package:flutter/material.dart';

void main() {
  runApp(const LocalSwapApp());
}

class LocalSwapApp extends StatelessWidget {
  const LocalSwapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocalSwap',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LocalSwap'),
        ),
      ),
    );
  }
}