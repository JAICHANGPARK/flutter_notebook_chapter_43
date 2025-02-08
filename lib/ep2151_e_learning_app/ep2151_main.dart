import 'package:flutter/material.dart';

import 'views/e_learning_home_page.dart';

void main() {
  runApp(ELearningApp());
}

class ELearningApp extends StatelessWidget {
  const ELearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ELearningHomePage(),
    );
  }
}
