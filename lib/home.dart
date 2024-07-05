import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/customcard.dart';
import 'package:ppob_app/tagihan_listrik/cek_tagihan.dart';
import 'package:ppob_app/token_listrik/cek.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          style: TextStyle(color: Colors.white),
          "PPOB APP"),
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          Container(
            height: 50,
            width: 400,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
           Column(
            children: [
              SizedBox(height: 95,),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCard(text: "Token Listrik", imagePath: "assets/images/token.png", onPressed: (){
                       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const Cek();
            }),
          );
                    },),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCard(text: "Tagihan Listrik", imagePath: "assets/images/tagihan.png", onPressed: (){
                       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const CekTagihan();
            }),
          );
                    }, )
                    
                  ],
                ),
              ),

            ],
            
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 7,
                    offset: const Offset(5, 0),
                  ),
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      size: 30,
                      Icons.home),
                    
                  ),
                  const Text("Home"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      size: 30,
                      Icons.history),
                    
                  ),
                  const Text("History"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      size: 30,
                      Icons.person),
                    
                  ),
                  const Text("Profil")
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
