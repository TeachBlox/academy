import 'package:flutter/material.dart';

import 'text.dart';

const kScaffoldBackgroundColor = Color(0xFF0C1116);
const kTextColor = Color(0xFFFFFFFF);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  primaryColor: kTextColor,
  textTheme: TextTheme(
    labelLarge: kLabelLarge.copyWith(color: kTextColor),
    labelMedium: kLabelMedium.copyWith(color: kTextColor),
    // labelSmall: kLabelMedium.copyWith(color: kTextColor),
    // bodySmall: kLabelMedium.copyWith(color: kTextColor),
    // bodyMedium: kLabelMedium.copyWith(color: kTextColor),
    bodyLarge: kLabelMedium.copyWith(color: kTextColor),
  ),
);
