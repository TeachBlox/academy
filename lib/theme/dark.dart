import 'package:flutter/material.dart';

import 'text.dart';

const kScaffoldBackgroundColor = Color(0xFF0C1116);
const kTextColor = Color(0xFFFFFFFF);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  textTheme: TextTheme(
    labelLarge: kLabelLarge.copyWith(color: kTextColor),
  ),
);
