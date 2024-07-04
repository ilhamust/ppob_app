import 'package:flutter/material.dart';
import 'package:ppob_app/token_listrik/listharga.dart';

class KotakBayar extends StatelessWidget {
  const KotakBayar({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    this.height = 100,
    this.width = 400,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    text3,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const ListHargaToken();
                        }),
                      );
                    },
                    child: Text(
                      "UBAH",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
