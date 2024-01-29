import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.customText, {super.key});

  final String customText;

  @override
  Widget build(BuildContext context) {
    return Text(
      customText,
      style: const TextStyle(
          color: Color.fromARGB(255, 246, 247, 247),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }
}
