import 'package:flutter/material.dart';

class AiVideoHomePage extends StatefulWidget {
  const AiVideoHomePage({super.key});

  @override
  State<AiVideoHomePage> createState() => _AiVideoHomePageState();
}

class _AiVideoHomePageState extends State<AiVideoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
