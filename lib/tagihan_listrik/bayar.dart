import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';

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
          const SizedBox(height: 20,),
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ButtonCustom(text: "BAYAR", onPressed: (){
            Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const BayarTagihan();
                        }));
          })
        ],
      ),
    );
  }
}