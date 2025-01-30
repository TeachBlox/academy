import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header_drawer.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LandingHeader(),
      endDrawer: LandingHeaderDrawer(),
    );
  }
}
