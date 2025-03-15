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
      theme: ThemeData.light().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: EventHomePage(),
    );
  }
}
