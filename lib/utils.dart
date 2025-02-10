import 'package:flutter/material.dart';
import 'package:teachblox/constants.dart';

TextStyle? getHeadlineLarge(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.headlineLarge;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.headlineLarge?.copyWith(
      fontSize: 44.0,
    );
  } else {
    return textTheme.headlineLarge?.copyWith(
      fontSize: 40.0,
    );
  }
}

TextStyle? getHeadlineMedium(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.headlineMedium;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.headlineMedium;
  } else {
    return textTheme.headlineMedium?.copyWith(
      fontSize: 36.0,
    );
  }
}

TextStyle? getHeadlineSmall(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.headlineSmall;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.headlineSmall;
  } else {
    return textTheme.headlineSmall;
  }
}

TextStyle? getBodyMedium(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.bodyMedium;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.bodyMedium;
  } else {
    return textTheme.bodyMedium;
  }
}

TextStyle? getDisplayLarge(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.displayLarge;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.displayLarge;
  } else {
    return textTheme.displayLarge;
  }
}

TextStyle? getDisplayMedium(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;
  final textTheme = Theme.of(context).textTheme;

  if (screenWidth < kMobileWidth) {
    return textTheme.displayMedium;
  } else if (screenWidth < kTabletWidth) {
    return textTheme.displayMedium;
  } else {
    return textTheme.displayMedium;
  }
}

double? getButtonWidth(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  if (screenWidth < kMobileWidth) {
    return double.infinity;
  }

  return null;
}

T getAdaptiveValue<T>(
  BuildContext context, {
  required T mobile,
  required T tablet,
  required T desktop,
}) {
  final screenWidth = MediaQuery.sizeOf(context).width;

  if (screenWidth < kMobileWidth) {
    return mobile;
  } else if (screenWidth < kTabletWidth) {
    return tablet;
  } else {
    return desktop;
  }
}
