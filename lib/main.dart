import 'package:flutter/material.dart';
import 'package:wisata_mobile5_genis/materiModulScreen/makananapiscreen9.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Makananapiscreen9(),
    );
  }
}
