import 'package:flutter/material.dart';

class Backgroud extends StatelessWidget {
  final Widget child;
  const Backgroud({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 0),
        height: size.height,
        width: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            child,
          ],
        ),
      ),
    );
  }
}
