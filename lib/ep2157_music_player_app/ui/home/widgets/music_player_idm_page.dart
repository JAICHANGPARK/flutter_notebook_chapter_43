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
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(16),
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
