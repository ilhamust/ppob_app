import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.text,
    this.height = 50,
    this.width = 330,
    required this.onPressed,
    this.color = Colors.orange,
  });
  final Color? color;
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
