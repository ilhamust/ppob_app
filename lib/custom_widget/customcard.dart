import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.imagePath,
    this.height = 100,
    this.width = 95,
    required this.onPressed,
  });

  final String text;
  final String imagePath;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: onPressed,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(width: 50, imagePath),
              Text(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                  text),
            ],
          ),
        ),
      ),
    );
  }
}
