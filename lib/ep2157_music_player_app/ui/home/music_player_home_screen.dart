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
              spacing: 12,
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
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        4,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
