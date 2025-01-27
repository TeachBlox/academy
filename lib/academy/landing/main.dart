import 'package:flutter/material.dart';

void main() {
  runApp(const LandingApp());
}

class LandingApp extends StatelessWidget {
  const LandingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Welcome to TeachBlox Landing Page!'),
        ),
      ),
    );
  }
}
