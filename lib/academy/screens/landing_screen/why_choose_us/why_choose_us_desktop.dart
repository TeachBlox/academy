import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_block.dart';
import 'package:teachblox/academy/screens/landing_screen/why_choose_us/why_choose_us_title.dart';

class WhyChooseUsDesktop extends StatelessWidget {
  final List<WhyChooseUsBlock> blocks;

  const WhyChooseUsDesktop({super.key, required this.blocks});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 505.0,
          child: const WhyChooseUsTitle(),
        ),
        SizedBox(
          width: 572.0,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 280.0,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 217.0,
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
      ],
    );
  }
}
