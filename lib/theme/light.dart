import 'package:flutter/material.dart';

import 'text.dart';

const kScaffoldBackgroundColor = Color(0xFFFDFDFD);
const kTextColor = Color(0xFF0C1116);

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  textTheme: TextTheme(
    headlineLarge: kHeadlineLarge.copyWith(color: kTextColor),
    labelLarge: kLabelLarge.copyWith(color: kTextColor),
    labelMedium: kLabelMedium.copyWith(color: kTextColor),
    bodyLarge: kLabelMedium.copyWith(color: kTextColor),
    bodyMedium: kBodyMedium.copyWith(color: kTextColor),
  ),
);
