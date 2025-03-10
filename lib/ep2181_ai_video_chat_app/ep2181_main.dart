import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2181_ai_video_chat_app/ui/ai_video_home_page.dart';

void main() {
  runApp(AIVideoChatApp());
}


class AIVideoChatApp extends StatelessWidget {
  const AIVideoChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
      home: AiVideoHomePage(),
    );
  }
}
