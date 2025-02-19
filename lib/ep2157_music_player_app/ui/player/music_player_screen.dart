import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/music_player_theme.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  CarouselController carouselController = CarouselController(
    initialItem: 1,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MusicPlayerTheme.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_left),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Lyrics",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.open_in_new),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 380,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -32,
                          top: 0,
                          bottom: 0,
                          right: -32,
                          child: CarouselView.weighted(
                            controller: carouselController,
                            flexWeights: [1, 4, 1],
                            // itemExtent: 280,
                            itemSnapping: true,
                            consumeMaxWeight: false,
                            shrinkExtent: 0.8,
                            children: List.generate(10, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  color: Colors.white,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Dream Youth"),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            "BONE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 24,
              left: 16,
              right: 16,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
