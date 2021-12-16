import 'package:flutter/material.dart';

class PagesBackground extends StatelessWidget {
  final Widget child;

  const PagesBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(child: _BubbleRed(), top: 548, left: -22),
          Positioned(child: _BubbleBlue(), top: -199, left: -54),
          this.child
        ],
      ),
    );
  }
}

class _BubbleBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: const Color.fromRGBO(31, 91, 167, 0.50)),
    );
  }
}

class _BubbleRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 571,
      height: 571,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(571),
          color: const Color.fromRGBO(188, 32, 37, 0.50)),
    );
  }
}
