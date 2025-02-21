import 'package:flutter/material.dart';

class NewsFeedHomePage extends StatefulWidget {
  const NewsFeedHomePage({super.key});

  @override
  State<NewsFeedHomePage> createState() => _NewsFeedHomePageState();
}

class _NewsFeedHomePageState extends State<NewsFeedHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 242, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    color: Color.fromRGBO(51, 62, 49, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 32,
                        ),
                        Expanded(
                          child: Row(
                            spacing: 12,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(247, 242, 232, 1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      Icon(
                                        Icons.manage_search,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Search title, author or ISBN",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.camera_alt_outlined,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: .8),
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                ),
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          child: Placeholder(),
                        ),
                        Container(
                          height: 300,
                          child: Placeholder(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Suggested Friends",
                                style: TextStyle(),
                              ),
                              Icon(
                                Icons.tune,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: Placeholder(),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                color: Colors.blue,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 24,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 24,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home_filled),
                                Text("HOME"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home_filled),
                                Text("HOME"),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home_filled),
                                Text("HOME"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 6,
                              children: [
                                Icon(Icons.explore_outlined),
                                Text(
                                  "DISCOVER",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 12,
                      top: 0,
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 242, 232, 1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            spacing: 6,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.perm_contact_calendar_outlined,
                              ),
                              Text(
                                "YOUR STORY",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
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
      ),
    );
  }
}
