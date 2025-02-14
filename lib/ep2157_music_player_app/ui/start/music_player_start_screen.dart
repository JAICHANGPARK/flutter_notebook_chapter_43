import 'package:flutter/material.dart';

class MusicPlayerStartScreen extends StatefulWidget {
  const MusicPlayerStartScreen({super.key});

  @override
  State<MusicPlayerStartScreen> createState() => _MusicPlayerStartScreenState();
}

class _MusicPlayerStartScreenState extends State<MusicPlayerStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 320,
                  child: Placeholder(),
                ),
                Container(
                  height: 320,
                  child: Placeholder(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
