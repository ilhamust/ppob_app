import 'package:flutter/material.dart';
import 'package:ppob_app/tagihan_listrik/cek_tagihan.dart';
import 'package:ppob_app/token_listrik/cek.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PPOB APP"),
        backgroundColor: Colors.orange,
      ),
      body: 
      Container(
            height: 50,
            width: 400,
            decoration: const BoxDecoration(
              color: Colors.orange,
      
            ),
            child:Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Cek();
                        }));
                      },
                      child:const Center(child: Text("Token Listrik"))),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const CekTagihan();
                        }));
                      },
                      child: const Center(child: Text("Tagihan Listrik"))),
                )
              ],
            ),
        ],
      ) ,
          ),
    );
  }
}