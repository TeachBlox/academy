import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:teachblox/academy/routing/routes.dart';
import 'package:teachblox/assets/svg_image.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/buttons/button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    return SizedBox(
      width: getButtonWidth(context),
      child: Button(
        leading: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SvgPicture.asset(SvgImage.getStarted),
        ),
        onPressed: () => context.go(registerScreenRoute),
        text: locale.getStarted,
        padding: EdgeInsets.only(
          top: 6.0,
          right: 20.0,
          bottom: 6.0,
          left: 6.0,
        ),
      ),
    );
  }
}
