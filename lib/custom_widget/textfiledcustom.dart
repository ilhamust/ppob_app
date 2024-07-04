import 'package:flutter/material.dart';

class TextFiledCustom extends StatelessWidget {
  const TextFiledCustom({
    super.key,
    required this.text,
    this.height = 100,
    this.width = 350,
  });
  final String text;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.10),
            blurRadius: 3,
            offset: const Offset(0, 5))
      ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
            Container(
              width: width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Contoh : 1234567890",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
