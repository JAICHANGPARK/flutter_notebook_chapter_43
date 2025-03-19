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
            top: 42,
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
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withValues(alpha: .1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2024/05/20/09/14/ai-generated-8774377_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 12,
                              children: [
                                Text(
                                  "AI Generated Art",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Subtitle Subtitle Subtitle Subtitle, Subtitle, Subtitle",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  spacing: 16,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "Data Center",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "10 Oct - 3 Feb 2025",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
                            Text(
                              'DATE',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: .12),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: DropdownButton(
                                isExpanded: true,
                                iconEnabledColor: Colors.white,
                                underline: SizedBox(),
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "Tue, 21 Apr 2025",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                                onChanged: (value) {},
                              ),
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
                            Text(
                              'TIME',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: .12),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: DropdownButton(
                                isExpanded: true,
                                iconEnabledColor: Colors.white,
                                underline: SizedBox(),
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "6:00 PM",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text("HOW MANY TICKETS",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
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
                            Text("\$ 12.00",
                              style: TextStyle(
                                color: Colors.grey,
                              ),),
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
                            Text("2",
                              style: TextStyle(
                                color: Colors.white,
                              ),),
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
                            Text("\$ 12.00",
                              style: TextStyle(
                                color: Colors.grey,
                              ),),
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
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(
                      child: Text(
                        "Buy ticket -> \$27.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
