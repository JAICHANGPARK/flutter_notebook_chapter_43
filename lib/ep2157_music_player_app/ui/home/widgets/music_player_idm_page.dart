import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/music_player_theme.dart';

class MusicPlayerIdmPage extends StatelessWidget {
  const MusicPlayerIdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 0,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "IDM Essentials",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: MusicPlayerTheme.primaryGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.refresh,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 240,
              padding: EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  spacing: 4,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dream Walker",
                                      s
                                    ),
                                    Text(
                                      "Live performance",
                                    )
                                  ],
                                ),
                              ),
                              Transform.rotate(
                                angle: 0.6,
                                child: IconButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
