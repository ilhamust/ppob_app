import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Image.asset(''),
            Text("text"),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                              "IYA"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
