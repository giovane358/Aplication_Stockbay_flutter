import 'package:aplication_stockbay/views/color.dart';
import 'package:flutter/material.dart';

class ElevatedButtonContaner extends StatelessWidget {
  final Widget child;
  const ElevatedButtonContaner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: buttonColor,
      ),
      child: child,
    );
  }
}

class TextFildContaner extends StatelessWidget {
  final Widget child;
  const TextFildContaner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: inputColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class SquareTile extends StatelessWidget {
  final String imagePatch;
  const SquareTile({super.key, required this.imagePatch});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePatch,
        height: 40,
      ),
    );
  }
}
