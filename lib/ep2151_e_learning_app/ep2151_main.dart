import 'package:flutter/material.dart';

void main() {
  runApp(ELearningApp());
}

class ELearningApp extends StatelessWidget {
  const ELearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ELearningApp(),
    );
  }
}
