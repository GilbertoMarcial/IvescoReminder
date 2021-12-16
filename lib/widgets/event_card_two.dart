import 'package:flutter/material.dart';

class EventCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: double.infinity,
        height: 200,
        decoration: _cardBorders(),
        child: Stack(
          children: [
            _BackgroundImage(),
            _EventTitle(),
            Positioned(
              top: 130,
              left: 10,
              child: _EventDetails(),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() {
    return BoxDecoration(
      color: Color.fromRGBO(248, 248, 248, 1.0),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 7),
          blurRadius: 10,
        )
      ],
    );
  }
}

class _EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Equipo en camino'),
          SizedBox(
            height: 5,
          ),
          Text(
            '28 de diciembre de 2021',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class _EventTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 70,
      color: Colors.white10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'PO IVE12345',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      height: 150,
      child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: AssetImage('assets/venta.png'),
      ),
    );
  }
}
