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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(61, 57, 28, 1),
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.topLeft,
                  // end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 52,
            left: 8,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(
                    "Tickets",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 62,
                    child: Placeholder(),
                  ),
                  Expanded(child: Placeholder())

                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
            icon: Icon(Icons.confirmation_num_outlined),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
