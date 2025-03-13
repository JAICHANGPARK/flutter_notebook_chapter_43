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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    child: Icon(
                      Icons.chevron_left,
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
