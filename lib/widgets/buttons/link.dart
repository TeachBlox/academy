import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  final String link;
  final String text;
  final EdgeInsetsGeometry padding;

  const Link({
    super.key,
    required this.link,
    required this.text,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        child: TextButton(
          onPressed: () => print(link),
          child: Text(text, style: Theme.of(context).textTheme.labelMedium),
        ),
      ),
    );
  }
}
