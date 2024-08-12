import 'package:flutter/material.dart';

// Reusable button widget
class AppButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AppButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
      ),
    );
  }
}
