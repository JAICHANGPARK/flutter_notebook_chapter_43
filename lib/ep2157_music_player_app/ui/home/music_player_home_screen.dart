import 'package:flutter/material.dart';

class MusicPlayerHomeScreen extends StatefulWidget {
  const MusicPlayerHomeScreen({super.key});

  @override
  State<MusicPlayerHomeScreen> createState() => _MusicPlayerHomeScreenState();
}

class _MusicPlayerHomeScreenState extends State<MusicPlayerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(),
                ),
                Spacer(),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(),
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(),
                ),



              ],
            )
          ],
        ),
      ),
    );
  }
}
