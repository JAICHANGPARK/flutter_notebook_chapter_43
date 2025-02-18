import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/music_player_theme.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MusicPlayerTheme.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_left),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Lyrics"),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.open_in_new),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
