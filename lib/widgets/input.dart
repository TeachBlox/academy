import 'package:flutter/material.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class Input extends StatelessWidget {
  final String hint;
  final double? width;

  const Input({super.key, this.hint = '', this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        style: getLabelMedium(context),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kGreyMediumLight),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kGreyMediumLight, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kGreyMediumLight, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: kGreyMediumLight,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
