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
            left: 16,
            right: 16,
            bottom: 24,
            top: 32,
            child: SafeArea(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ticket purchase",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 320,
                    child: Placeholder(),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [Text('DATE'), Container()],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [Text('DATE'), Container()],
                        ),
                      ),
                    ],
                  ),
                  Text("HOW MANY TICKETS"),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            "Adult",
                          ),
                          Text("\$ 12.00"),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
