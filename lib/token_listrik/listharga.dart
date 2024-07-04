import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/harga.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar2.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar3.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar4.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar5.dart';
import 'package:ppob_app/token_listrik/page_bayar/bayar6.dart';

class ListHargaToken extends StatelessWidget {
  const ListHargaToken({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextFiledCustom(text: "IDPEL / NOMOR METER"),
            const SizedBox(height: 10,),
            ListHarga(text1: "Nominal 20.000", text2: "Token Listrik Rp. 20.000", text3: "Rp. 22.000", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken1();
                        }));
            }),
            ListHarga(text1: "Nominal 50.000", text2: "Token Listrik Rp. 50.000", text3: "Rp. 52.000",
             onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken2();
                        }));
            }),
            ListHarga(text1: "Nominal 70.000", text2: "Token Listrik Rp. 70.000", text3: "Rp. 72.000", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken3();
                        }));
            }),
            ListHarga(text1: "Nominal 100.000", text2: "Token Listrik Rp. 100.000", text3: "Rp. 102.000", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken4();
                        }));
            }),
            ListHarga(text1: "Nominal 150.000", text2: "Token Listrik Rp. 150.000", text3: "Rp. 152.000", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken5();
                        }));
            }),
            ListHarga(text1: "Nominal 200.000", text2: "Token Listrik Rp. 200.000", text3: "Rp. 202.000", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarToken6();
                        }));
            }),
          ],
        ),
      ),
    );
  }
}