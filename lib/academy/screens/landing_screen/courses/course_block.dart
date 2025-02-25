import 'package:flutter/material.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';

class CourseBlock extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String path;

  const CourseBlock({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    final locale = getLocale(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 8.0),
          child: Text(
            title,
            style: getDisplayMedium(context)?.copyWith(color: Colors.white),
          ),
        ),
        Text(description, style: getDisplayMedium(context)),
        Padding(
          padding: const EdgeInsets.only(top: 36.0, bottom: 24.0),
          child: TextButton(
            onPressed: () {
              print(path);
            },
            child: Text(locale.startLearning),
          ),
        ),
      ],
    );
  }
}
