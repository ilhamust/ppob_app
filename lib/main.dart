import 'package:flutter/material.dart';
import 'package:ppob_app/custom_widget/buttoncustom.dart';
import 'package:ppob_app/custom_widget/harga.dart';
import 'package:ppob_app/custom_widget/textfiledcustom.dart';
import 'package:ppob_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Home() //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const TextFiledCustom(text: "Token Listrik"),
//             ButtonCustom(text: "CEK", onPressed: (){}),
//             ListHarga(text1: "Nominal 20.000", text2: "Token Listrik 20.000", text3: "Rp. 22.0000", onPressed: (){})
//           ],
//         ),
//       ),
//     );
//   }
// }
