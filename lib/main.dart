import 'package:aplication_stockbay/screen/walcaomescreen/walcome.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stockbay',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WalcomeScreen(),
    );
  }
}
