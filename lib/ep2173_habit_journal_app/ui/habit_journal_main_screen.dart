import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2173_habit_journal_app/habit_app_theme.dart';

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
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HabitAppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 28,
                      ),
                      Text(
                        "Home",
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
