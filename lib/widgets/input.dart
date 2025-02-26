import 'package:flutter/material.dart';
import 'package:teachblox/theme/colors.dart';
import 'package:teachblox/utils.dart';

class Input extends StatelessWidget {
  final String hint;
  final double width;
  final bool isPassword;

  const Input({
    super.key,
    this.hint = '',
    this.width = double.infinity,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        obscureText: isPassword,
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
