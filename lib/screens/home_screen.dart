import 'package:flutter/material.dart';
import 'package:ivescoreminder/widgets/pages_background.dart';
import 'package:ivescoreminder/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ivesco Reminder',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: PagesBackground(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'event'),
            child: Column(
              children: [
                EventCard(),
                EventCardTwo(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, 'register'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
