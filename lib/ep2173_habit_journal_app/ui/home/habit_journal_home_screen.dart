import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
        padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  iconSize: 32,
                ),
                CircleAvatar(),
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  vertical: 38,
                ),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 16,
                            lineWidth: 6,
                            percent: .6,
                          ),
                          Text(
                            "Wed",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                  ],
                )),
            Container(
              height: 160,
              child: Placeholder(),
            ),
            Gap(12),
            Container(
                height: 140,
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                  ],
                )),
            Gap(12),
            Container(
              height: 160,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
