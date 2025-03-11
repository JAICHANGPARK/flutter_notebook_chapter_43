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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6,vertical:4),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(71, 71, 71, 1),
                          ),
                          child: Row(
                            spacing: 6,
                            children: [
                              Icon(
                                Icons.diamond_outlined,
                                color: Colors.orange,
                              ),
                              Text(
                                "Shop",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
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
                      color: Color.fromRGBO(255, 74, 152, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(255, 74, 152, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
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
