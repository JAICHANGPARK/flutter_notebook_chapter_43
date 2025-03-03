import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HabitJournalHomeScreen extends StatefulWidget {
  const HabitJournalHomeScreen({super.key});

  @override
  State<HabitJournalHomeScreen> createState() => _HabitJournalHomeScreenState();
}

class _HabitJournalHomeScreenState extends State<HabitJournalHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Gap(16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MindTrack",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hello, Dreamwalker",
                      )
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                CircleAvatar(),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 24,
              height: 100,
              child: Placeholder(),
            ),
            Container(
              height: 140,
              child: Placeholder(),
            )

          ],
        ),
      ),
    );
  }
}
