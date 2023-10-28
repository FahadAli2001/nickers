import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final Icon? suffixIcon;
  const CustomTextField({super.key, required this.width, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
