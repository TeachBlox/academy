import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_block.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_title.dart';
import 'package:teachblox/utils.dart';

class WhyChooseUsTablet extends StatelessWidget {
  final List<WhyChooseUsBlock> blocks;

  const WhyChooseUsTablet({super.key, required this.blocks});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 505.0,
          child: const WhyChooseUsTitle(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 56.0),
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getAdaptiveValue(
                  context,
                  mobile: 1,
                  tablet: 2,
                  desktop: 2,
                ),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 192.0,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blocks.length,
              itemBuilder: (context, index) {
                final item = blocks[index];
                return item;
              },
            ),
          ),
        ),
      ],
    );
  }
}
