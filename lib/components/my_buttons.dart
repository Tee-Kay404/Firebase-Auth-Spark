import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final VoidCallback onPressed;
  const MyButtons({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 65),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: const Text(
          'Sign In',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
