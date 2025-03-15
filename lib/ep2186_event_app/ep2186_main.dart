import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2186_event_app/ui/event_home_page.dart';

void main() {
  runApp(EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventHomePage(),
    );
  }
}
