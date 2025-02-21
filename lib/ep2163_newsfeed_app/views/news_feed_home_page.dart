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
                    color: Colors.indigo,
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
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: .8),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    )),
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
          ],
        ),
      ),
    );
  }
}
