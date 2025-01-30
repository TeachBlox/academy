import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/l10n/locals.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: SvgPicture.asset(SvgImage.companyLogo),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: Text(
            getLocale(context).companyTitle,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
