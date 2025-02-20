import 'package:flutter/material.dart';

import 'views/news_feed_home_page.dart';

void main() {
  runApp(NewsFeedApp());
}

class NewsFeedApp extends StatelessWidget {
  const NewsFeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsFeedHomePage(),
    );
  }
}
