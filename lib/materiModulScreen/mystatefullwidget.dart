import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _Mystatefulwidget();
}

class _Mystatefulwidget extends State<Mystatefulwidget> {

  var _jumlahHitung = 0;

  void _tambah()
  {
    setState(() {
      _jumlahHitung++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ini statefull widget",
      home: Scaffold(
        body: Center(
          child: Column(
          children: [
             Text("$_jumlahHitung"),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {
              _tambah();
            }, child:const Text("Tekan Tombol ini"))
          ],
        ),
        )
      )
      ,
    );
  }
}