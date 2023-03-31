import 'package:flutter/material.dart';

class SquareFile extends StatelessWidget {

  final String imagePath;

  const SquareFile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
        border: Border.all(
          color: Colors.white,
        )
      ),
      child: Image.asset(
        imagePath,
        height: 40,
        ),
    );
  }
}
