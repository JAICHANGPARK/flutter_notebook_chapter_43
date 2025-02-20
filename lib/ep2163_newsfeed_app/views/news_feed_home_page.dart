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
                children: [
                  Container(
                    height: 100,
                    color: Colors.indigo,
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
