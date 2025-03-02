import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2173_habit_journal_app/habit_app_theme.dart';
import 'package:hugeicons/hugeicons.dart';

class HabitJournalMainScreen extends StatefulWidget {
  const HabitJournalMainScreen({super.key});

  @override
  State<HabitJournalMainScreen> createState() => _HabitJournalMainScreenState();
}

class _HabitJournalMainScreenState extends State<HabitJournalMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Placeholder(),
          ),
          Container(
            // height: 82,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HabitAppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Column(
                    spacing: 2,
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: HabitAppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 28,
                        color: HabitAppTheme.primary,
                      ),
                      Text(
                        "Well-being",
                        style: TextStyle(
                          // color: HabitAppTheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: HabitAppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.water_drop,
                        size: 28,
                        color: HabitAppTheme.primary,
                      ),
                      Text(
                        "Water",
                        style: TextStyle(
                          // color: HabitAppTheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: HabitAppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Column(
                    children: [
                      Icon(
                        HugeIcons.strokeRoundedAiMagic,
                        size: 28,
                        color: HabitAppTheme.primary,
                      ),
                      Text(
                        "idea",
                        style: TextStyle(
                          // color: HabitAppTheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
