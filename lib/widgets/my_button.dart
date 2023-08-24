import 'package:flutter/material.dart';
import 'package:flutter_xtendly/utils/helpers.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.label, this.height, this.width, this.color, this.boxDecoration});

  final String label;
  final double? width, height;
  final Color? color;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 218,
      height: height ?? 51,
      decoration: boxDecoration ?? BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color ?? Colors.white)),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: currentWidth(context) > tabletWidth ? 24 : 16,
                color: Colors.black),
          )),
    );
  }
}
