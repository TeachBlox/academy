import 'package:flutter/material.dart';
import 'package:teachblox/widgets/headers/landing.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LandingHeader(),
    );
  }
}
