import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/home.dart';

class TransaksiSelesai extends StatelessWidget {
  const TransaksiSelesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            Image.asset(width:150,'assets/images/centang.png'),
            Padding(
              padding: const EdgeInsets.all(39.0),
              child: Text(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 25, fontWeight: FontWeight.bold),
                "Transaksi Anda\nSedang di Proses"),
            ),
            const Expanded(child: SizedBox()),
            ButtonCustom(text: "OKE", onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Home();
                        }));
            })
            
          ],
        ),
      ),
    );
  }
}