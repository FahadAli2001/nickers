import 'package:flutter/material.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration:const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
    );
  }
}