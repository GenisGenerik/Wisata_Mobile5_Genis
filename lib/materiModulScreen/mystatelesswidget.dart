import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ini stateless",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halodunia'),
          backgroundColor: Colors.amberAccent,

        ),
        body: Center(
          child:  Column(
          children: [
            const Text("Halo Dunia"),
            Image.asset("assets/images/Gambar.jpg",width: 250,height: 250,),
            Image.asset("assets/images/Gambar.jpg",width: 250,height: 250,),
          ],
        ),
        )
      ),
    );
  }
}
