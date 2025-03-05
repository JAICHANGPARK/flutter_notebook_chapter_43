import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2173_habit_journal_app/habit_app_theme.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                height: 82,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 18,
                            lineWidth: 8,
                            percent: .6,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            startAngle: 180,
                            progressColor: HabitAppTheme.primary,
                            // arcBackgroundColor: Colors.red,
                          ),
                          Gap(12),
                          Text(
                            "Wed",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            child: Icon(Icons.check),
                          ),
                          Gap(8),
                          Text(
                            "Thu",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 18,
                            lineWidth: 8,
                            percent: .6,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            startAngle: 180,
                            progressColor: HabitAppTheme.primary,
                            // arcBackgroundColor: Colors.red,
                          ),
                          Gap(12),
                          Text(
                            "Fri",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            child: Icon(Icons.check),
                          ),
                          Gap(8),
                          Text(
                            "Sat",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            child: Icon(Icons.check),
                          ),
                          Gap(8),
                          Text(
                            "Sun",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                          color: HabitAppTheme.primary,
                          shape: StadiumBorder(),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "15",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            // Gap(8),
                            Text(
                              "Mon",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // CircularPercentIndicator(
                            //   radius: 16,
                            //   lineWidth: 6,
                            //   percent: .6,
                            //   circularStrokeCap: CircularStrokeCap.round,
                            //   backgroundColor: Color.fromRGBO(208, 204, 241, 1),
                            //   startAngle: 180,
                            //   progressColor: HabitAppTheme.primary,
                            // ),
                            Text(
                              "16",
                              style: TextStyle(
                                fontSize: 20,
                                // color: Colors.white,
                              ),
                            ),
                            // Gap(8),
                            Text(
                              "Tue",
                              style: TextStyle(
                                fontSize: 20,
                                // color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                height: 160,
                decoration: BoxDecoration(
                  color: HabitAppTheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "7 tasks",
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: HabitAppTheme.accent,
                          child: Icon(
                            Icons.add,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Before long: Meet Dream for coffee",
                      style: TextStyle(
                        // fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    LinearPercentIndicator(
                      lineHeight: 32,
                      barRadius: Radius.circular(24),
                      percent: .6,
                      padding: EdgeInsets.all(3),
                      progressColor: HabitAppTheme.accent,
                    ),
                  ],
                )),
            Gap(12),
            Container(
                height: 140,
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208, 204, 241, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(208, 204, 241, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                )),
            Gap(12),
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Color.fromRGBO(208, 204, 241, 1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
