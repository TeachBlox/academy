import 'package:flutter/material.dart';
import 'package:teachblox/theme/colors.dart';

import '../../theme/text.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final ButtonVariant variant;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  final Widget? leading;
  final bool fullWidth;

  const Button({
    super.key,
    required this.onPressed,
    required this.text,
    this.leading,
    this.variant = ButtonVariant.primary,
    this.textStyle = const TextStyle(),
    this.fullWidth = false,
    this.padding = const EdgeInsets.symmetric(
      vertical: kPaddingVertical,
      horizontal: kPaddingHorizontal,
    ),
  });

  Widget _buildPrimaryButton(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: linearGradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leading ?? const SizedBox(),
              Text(
                text,
                style: kLabelMedium.copyWith(color: primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGhostButton(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: primaryColor),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(),
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: primaryColor),
          ),
        ),
      ),
    );
  }

  Widget _buildLinkButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kMainOrange,
            width: 1.5,
          ),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 0),
          overlayColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: kLabelMedium.copyWith(
            color: kMainOrange,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
        return _buildPrimaryButton(context);
      case ButtonVariant.ghost:
        return _buildGhostButton(context);
      case ButtonVariant.link:
        return _buildLinkButton(context);
    }
  }
}

enum ButtonVariant {
  primary,
  ghost,
  link,
}

const kPaddingHorizontal = 16.0;
const kPaddingVertical = 12.0;
