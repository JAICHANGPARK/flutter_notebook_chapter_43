import 'package:flutter/material.dart';

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
    );
  }
}
