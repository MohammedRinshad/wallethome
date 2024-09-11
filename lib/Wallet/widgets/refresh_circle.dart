
import 'package:flutter/material.dart';

class RefreshCircle extends StatelessWidget {
  const RefreshCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.swap_calls,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
