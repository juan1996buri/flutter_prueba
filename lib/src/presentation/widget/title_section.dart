import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title,
            style: titleSectionStyle,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
