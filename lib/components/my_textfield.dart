import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller ;
  final String hintText;
  final bool? obscureText;
  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500]
          ),
          fillColor: Colors.grey[100],
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            )
          ),
        ),
      ),
    );
  }
}