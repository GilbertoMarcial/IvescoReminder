import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(child: _BubbleRed(), top: -62, left: 230),
          Positioned(child: _BubbleRed(), top: 710, left: 258),
          Positioned(child: _BubbleBlue(), top: -136, left: -108),
          Positioned(child: _BubbleRedSmall(), top: 196, left: -19),
          _TextHeader(),
          this.child
        ],
      ),
    );
  }
}

class _TextHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 60),
        Text(
          'Bienvenido',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 10),
        Text(
          ' Identifícate!',
          style: TextStyle(
            fontSize: 40.0,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
      ],
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
          color: const Color.fromRGBO(31, 91, 167, 1.0)),
    );
  }
}

class _BubbleRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      height: 195,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(195),
          color: const Color.fromRGBO(188, 32, 37, 1.0)),
    );
  }
}

class _BubbleRedSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(95),
          color: const Color.fromRGBO(188, 32, 37, 1.0)),
    );
  }
}
