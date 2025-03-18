import 'package:flutter/material.dart';

class EventPurchasePage extends StatefulWidget {
  const EventPurchasePage({super.key});

  @override
  State<EventPurchasePage> createState() => _EventPurchasePageState();
}

class _EventPurchasePageState extends State<EventPurchasePage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
