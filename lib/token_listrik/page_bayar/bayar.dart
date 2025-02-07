import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/custom_widget/widgetbayar.dart';
import 'package:ppob_app/popup.dart';

class BayarToken1 extends StatelessWidget {
  const BayarToken1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
            style: TextStyle(
              color: Colors.white,
            ),
            "TOKEN LISTRIK"),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const TextFiledCustom(text: "IDPEL / NOMOR METER"),
          const KotakBayar(
            text1: "Nominal 20.000",
            text2: "Token Listrik Rp. 20.000",
            text3: "Rp. 22.000",
          ),
          const SizedBox(
            height: 438,
          ),
          ButtonCustom(
              text: "BAYAR",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PopUp();
                }));
              })
        ],
      ),
    );
  }
}
