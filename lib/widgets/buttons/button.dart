import 'package:flutter/material.dart';

import '../../theme/text.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final ButtonVariant variant;

  const Button({
    super.key,
    required this.onPressed,
    required this.text,
    this.variant = ButtonVariant.primary,
  });

  Color getTextColor(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    switch (variant) {
      case ButtonVariant.primary:
        return Colors.white;
      case ButtonVariant.ghost:
        return primaryColor;
    }
  }

  Widget _buildPrimaryButton(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFE604D), Color(0xFFFF9E04)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kPaddingVertical, horizontal: kPaddingHorizontal),
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: primaryColor),
          ),
        ),
      ),
    );
  }

  Widget _buildGhostButton(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: primaryColor),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kPaddingVertical, horizontal: kPaddingHorizontal),
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: primaryColor),
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
    }
  }
}

enum ButtonVariant {
  primary,
  ghost,
}

const kPaddingHorizontal = 16.0;
const kPaddingVertical = 8.0;
