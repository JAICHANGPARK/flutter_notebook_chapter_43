import 'package:flutter/material.dart';

class AiVideoDetailPage extends StatefulWidget {
  const AiVideoDetailPage({super.key});

  @override
  State<AiVideoDetailPage> createState() => _AiVideoDetailPageState();
}

class _AiVideoDetailPageState extends State<AiVideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 24,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white.withValues(alpha: .3),
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.chevron_left,
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white.withValues(alpha: .3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.red,
                        ),
                        Text(
                          "00:91:30",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 16,
                              top: 16,
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.grey,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Icon(
                                      Icons.graphic_eq,
                                      color: Colors.white,
                                    ),
                                    CircleAvatar(
                                      radius: 14,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.grey,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Text(
                                      "Me",
                                    ),
                                    Icon(
                                      Icons.mic_none,
                                    ),
                                    Icon(
                                      Icons.videocam_outlined,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      child: Row(
                        children: [
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Color.fromRGBO(47, 47, 47, 1),
                ),
                padding: EdgeInsets.all(6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.mic_off),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.videocam_outlined),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.circle_outlined),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.volume_mute_outlined,
                      ),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.phone,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
