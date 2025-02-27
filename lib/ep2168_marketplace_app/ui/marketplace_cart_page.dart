import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MarketplaceCartPage extends StatefulWidget {
  const MarketplaceCartPage({super.key});

  @override
  State<MarketplaceCartPage> createState() => _MarketplaceCartPageState();
}

class _MarketplaceCartPageState extends State<MarketplaceCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              left: 16,
              right: 16,
              top: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back),
                      ),
                      Expanded(
                        child: Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Cart",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: " (30)",
                                  style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        child: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  Gap(24),
                  Container(
                    height: 52,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                          side: BorderSide(
                        color: Colors.grey[200]!,
                      )),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.mic_none),
                      ],
                    ),
                  ),
                  Gap(24),
                  Container(
                    height: 52,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.orange[100],
                    ),
                    child: Row(
                      // spacing: 12,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 140,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text(
                              "Online",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 140,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            // color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text(
                              "Store",
                              style: TextStyle(
                                  // color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(24),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 6,
                                      children: [
                                        Text(
                                          "Face Wash",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          spacing: 12,
                                          children: [
                                            Text("Skincare"),
                                            Icon(Icons.keyboard_arrow_down),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("\$25"),
                                            Spacer(),
                                            Container(
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                // border: Border.all(
                                                //   color: Colors.white,
                                                // ),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                  )
                                                ],
                                              ),
                                              child: Text(
                                                "1",
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.deepOrangeAccent,
                                                ),
                                              ),
                                              child: Text(
                                                "1",
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.deepOrangeAccent,
                                                ),
                                                color: Colors.deepOrangeAccent,
                                              ),
                                              child: Text(
                                                "1",
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withValues(
                        alpha: 0.4,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                          child: Text("1"),
                        ),
                        Gap(12),
                        Text(
                          "\$75",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.orange[50],
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.chat_outlined,
                            size: 14,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              Text(
                                "Buy",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepOrangeAccent,
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
