import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/music_player_theme.dart';
import 'package:gap/gap.dart';

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
                  Gap(12),
                  Expanded(
                    child: Column(
                      spacing: 12,
                      children: [
                        Text(
                          "Dream Youth",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 2,
                          ),
                          child: Text(
                            "BONE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: TextStyle(height: 1.5),
                              
                            ),
                          ),
                        ))
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
