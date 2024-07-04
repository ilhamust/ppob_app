import 'package:flutter/material.dart';

class ListHarga extends StatelessWidget {
  const ListHarga({
    super.key,
    required this.text1,
    this.height = 70,
    this.width = 350,
    required this.text2,
    required this.text3,
    required this.onPressed,
  });

  final String text1;
  final String text2;
  final String text3;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Text(
                      text3,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      text2,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
