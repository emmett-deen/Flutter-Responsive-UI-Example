import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const SectionTitle({Key? key, required this.text, required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Row(
        children: [Expanded(child: Text(text, style: style))],
      ),
    );
  }
}
