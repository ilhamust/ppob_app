import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/tagihan_listrik/bayar.dart';

class CekTagihan extends StatelessWidget {
  const CekTagihan({super.key});

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
          const TextFiledCustom(text: "IDPEL"),
          const SizedBox(
            height: 20,
          ),
          ButtonCustom(
              text: "CEK TAGIHAN",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const BayarTagihan();
                }));
              })
        ],
      ),
    );
  }
}
