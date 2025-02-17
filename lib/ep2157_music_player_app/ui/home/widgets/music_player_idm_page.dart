import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2157_music_player_app/music_player_theme.dart';

class MusicPlayerIdmPage extends StatelessWidget {
  const MusicPlayerIdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "IDM Essentials",
              ),
              Container(
                decoration: BoxDecoration(
                  color: MusicPlayerTheme.primaryGreen,
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
          )
        ],
      ),
    );
  }
}
