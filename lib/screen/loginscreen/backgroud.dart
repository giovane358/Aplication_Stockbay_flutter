import 'package:aplication_stockbay/screen/walcaomescreen/walcome.dart';
import 'package:aplication_stockbay/views/widget.dart';
import 'package:flutter/material.dart';

class Backgroud extends StatelessWidget {
  final Widget child;
  const Backgroud({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 0),
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 70,
              left: 5,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WalcomeScreen(),
                  ),
                ),
                child: const Positioned(
                  top: 60,
                  child: SquareTile(imagePatch: 'images/img/exit.png'),
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
