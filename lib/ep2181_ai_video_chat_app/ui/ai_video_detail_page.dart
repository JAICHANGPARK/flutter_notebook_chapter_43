import 'package:flutter/material.dart';

class AiVideoDetailPage extends StatefulWidget {
  const AiVideoDetailPage({super.key});

  @override
  State<AiVideoDetailPage> createState() => _AiVideoDetailPageState();
}

class _AiVideoDetailPageState extends State<AiVideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: Icon(
                  Icons.chevron_left,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
