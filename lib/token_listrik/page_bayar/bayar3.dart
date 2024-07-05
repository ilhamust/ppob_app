import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/custom_widget/widgetbayar.dart';

class BayarToken3 extends StatelessWidget {
  const BayarToken3({super.key});

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
            text1: "Nominal 70.000",
            text2: "Token Listrik Rp. 70.000",
            text3: "Rp. 72.000",
          ),
          const SizedBox(
            height: 438,
          ),
          ButtonCustom(text: "BAYAR", onPressed: () {})
        ],
      ),
    );
  }
}
