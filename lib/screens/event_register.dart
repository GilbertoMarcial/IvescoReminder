import 'package:flutter/material.dart';
import 'package:ivescoreminder/widgets/event_form.dart';
import 'package:ivescoreminder/widgets/widgets.dart';

class EventRegister extends StatelessWidget {
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
                  EventForm(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
