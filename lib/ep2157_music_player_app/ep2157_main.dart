import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/ui/start/music_player_start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MusicPlayerApp());
}

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlayerStartScreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
      ),
    );
  }
}
