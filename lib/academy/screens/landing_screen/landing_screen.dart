import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/about_platform/about_platform.dart';
import 'package:teachblox/academy/screens/landing_screen/how_it_works/how_it_works.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/landing_header_drawer.dart';
import 'package:teachblox/academy/screens/landing_screen/statistic/statistic.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LandingHeader(),
      endDrawer: LandingHeaderDrawer(),
      body: ListView(
        children: [
          AboutPlatform(),
          Statistic(),
          HowItWorks(),
          WhyChooseUs(),
        ],
      ),
    );
  }
}
