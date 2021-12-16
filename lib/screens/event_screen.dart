import 'package:flutter/material.dart';
import 'package:ivescoreminder/widgets/pages_background.dart';
import 'package:ivescoreminder/widgets/widgets.dart';

class EventScreen extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  EventImage(),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Color.fromRGBO(188, 32, 37, 1.0),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Text('Historia'),
              // _historyEvent(),
              EventHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
