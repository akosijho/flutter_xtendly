import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/utils.dart';

/// This reusable widget is for the header tabs that is text

class HeaderTabsText extends StatelessWidget {
  const HeaderTabsText({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        currentWidth(context) < 1200 ? horizontalSpaceMedium : horizontalSpaceLarge,
      ],
    );
  }
}
