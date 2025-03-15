import 'package:flutter/material.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
         
        ],
      ),
    );
  }
}
