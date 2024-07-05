import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/popup.dart';

class BayarTagihan extends StatelessWidget {
  const BayarTagihan({super.key});

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
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text("Data Pelanggan"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Nama"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "Ahmad")
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Total Lemabaran Tagihan"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "1 Lembar")
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Bulan/Tahun"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "April 2020")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Total Tagihan"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "Rp. 138.000")
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Biaya Admin"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "Rp. 2.500")
                      ],
                    ),
                    Divider(
                      color: Colors.grey[700], // Warna garis
                      thickness: 2, // Ketebalan garis // Jarak dari sisi kanan
                    ),
                    Row(
                      children: [
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "Total Bayar"),
                        const Expanded(child: SizedBox()),
                        Text(
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            "140.500")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
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
