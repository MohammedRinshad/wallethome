import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SeeAllButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        "See all",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
      ),
    );
  }
}
