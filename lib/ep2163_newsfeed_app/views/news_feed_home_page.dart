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
                    color: Colors.indigo,
                  ),
                  Expanded(child: SingleChildScrollView(
                    child: Column(
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
