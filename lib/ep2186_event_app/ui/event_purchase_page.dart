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
                    spacing: 6,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Text('DATE'),
                            Container(
                              height: 52,
                              decoration: BoxDecoration(color: Colors.white.withValues(alpha: .2)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Text('TIME'),
                            Container(
                              height: 52,
                              decoration: BoxDecoration(color: Colors.white.withValues(alpha: .2)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text("HOW MANY TICKETS"),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adult",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text("\$ 12.00"),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: .2),
                        ),
                        child: Row(
                          spacing: 12,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                              ),
                              color: Colors.orange,
                            ),
                            Text("2"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                              ),
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adult",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text("\$ 12.00"),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: .2),
                        ),
                        child: Row(
                          spacing: 12,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                              ),
                              color: Colors.orange,
                            ),
                            Text("2"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                              ),
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Buy ticket -> \$27.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
