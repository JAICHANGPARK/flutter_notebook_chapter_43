import 'package:flutter/material.dart';

class AiVideoHomePage extends StatefulWidget {
  const AiVideoHomePage({super.key});

  @override
  State<AiVideoHomePage> createState() => _AiVideoHomePageState();
}

class _AiVideoHomePageState extends State<AiVideoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 12,
              child: Column(
                spacing: 6,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.pinkAccent,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      spacing: 6,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.videocam_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Start Live",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        CircleAvatar(
                          radius: 26,
                        ),
                        CircleAvatar(
                          radius: 26,
                        ),
                        CircleAvatar(
                          radius: 26,
                        ),
                        CircleAvatar(
                          radius: 26,
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
