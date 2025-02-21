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
                height: 92,
              ),
            )
          ],
        ),
      ),
    );
  }
}
