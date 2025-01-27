import 'package:flutter/material.dart';

void main() {
  runApp(const WebApp());
}

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('TeachBlox App')),
        body: Center(
          child: Text('Welcome to TeachBlox App!'),
        ),
      ),
    );
  }
}
