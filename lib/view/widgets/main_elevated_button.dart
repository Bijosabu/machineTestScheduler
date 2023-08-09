import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainElevatedButton extends StatelessWidget {
  Color? bgColor;
  final void Function()? onPressed;
  final String text;
  MainElevatedButton(
      {super.key, this.onPressed, required this.text, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size(16, 32),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
