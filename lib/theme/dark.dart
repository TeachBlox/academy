import 'package:flutter/material.dart';

import 'text.dart';

const kScaffoldBackgroundColor = Color(0xFF0C1116);
const kTextColor = Color(0xFFFFFFFF);
const kTextSecondColor = Color(0xFFC5C5C5);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  primaryColor: kTextColor,
  textTheme: TextTheme(
    headlineLarge: kHeadlineLarge.copyWith(color: kTextColor),
    headlineMedium: kHeadlineMedium.copyWith(color: kTextColor),
    headlineSmall: kHeadlineSmall.copyWith(color: kTextColor),
    labelLarge: kLabelLarge.copyWith(color: kTextColor),
    labelMedium: kLabelMedium.copyWith(color: kTextColor),
    bodyLarge: kLabelMedium.copyWith(color: kTextColor),
    bodyMedium: kBodyMedium.copyWith(color: kTextColor),
    displayMedium: kDisplayMedium.copyWith(color: kTextSecondColor),
  ),
);
