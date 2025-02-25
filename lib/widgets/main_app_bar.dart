import 'package:flutter/material.dart';
import 'package:teachblox/academy/screens/landing_screen/landing_header/utils.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/common/company_logo.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getAdaptiveValue(
          context,
          mobile: 16.0,
          tablet: 48.0,
          desktop: 96.0,
        ),

        vertical: 24.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CompanyLogo(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kHeaderHeight);
}
