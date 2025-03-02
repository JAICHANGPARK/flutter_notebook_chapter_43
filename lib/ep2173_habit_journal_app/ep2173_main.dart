import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2173_habit_journal_app/habit_app_theme.dart';
import 'package:flutter_notebook_chapter_43/ep2173_habit_journal_app/ui/habit_journal_main_screen.dart';

void main() {
  runApp(HabitJournalApp());
}

class HabitJournalApp extends StatelessWidget {
  const HabitJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: HabitAppTheme.background,
      ),
      home: HabitJournalMainScreen(),
    );
  }
}
