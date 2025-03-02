import 'package:flutter/material.dart';

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
            height: 100,
            child: Row(
              children: [],
            ),

          )
        ],
      ),
    );
  }
}
