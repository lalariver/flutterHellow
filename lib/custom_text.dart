import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.containerColor,
      required this.textColor});

  final String text;
  final Color containerColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 236, 64, 64), fontSize: 20),
      ),
    );
  }
}