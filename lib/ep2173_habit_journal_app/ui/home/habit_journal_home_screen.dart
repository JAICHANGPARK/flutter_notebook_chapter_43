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
  bool toggle = false;

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: toggle
                      ? [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                toggle = !toggle;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: HabitAppTheme.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tasks",
                                        style: TextStyle(
                                          fontSize: 24,
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
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(215, 214, 244, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Meet Dream for coffee",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "17:00",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(215, 214, 244, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pick up clothes from the dry..",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "123 Street, Downtown",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(215, 214, 244, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Schedule doctor's appointment",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(231, 231, 245, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Clean the car",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(Icons.check)
                              ],
                            ),
                          ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 231, 245, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Clean the car",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(Icons.check)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 231, 245, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Clean the car",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(Icons.check)
                        ],
                      ),
                    )
                        ]
                      : [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                toggle = !toggle;
                              });
                            },
                            child: Container(
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
                          ),
                          Gap(12),
                          Container(
                              height: 148,
                              child: Row(
                                spacing: 12,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(216, 220, 241, 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        spacing: 8,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Sport",
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              CircleAvatar(
                                                backgroundColor: HabitAppTheme.primary,
                                                foregroundColor: Colors.white,
                                                child: Icon(Icons.add),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Color.fromRGBO(208, 204, 241, 1),
                                            ),
                                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Push-ups",
                                                ),
                                                Text(
                                                  "7d",
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Color.fromRGBO(208, 204, 241, 1),
                                            ),
                                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Push-ups",
                                                ),
                                                Text(
                                                  "7d",
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(216, 220, 241, 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: CircularPercentIndicator(
                                          radius: 64,
                                          lineWidth: 24,
                                          progressColor: HabitAppTheme.accent,
                                          percent: .7,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("4,654 \$"),
                                              Divider(
                                                indent: 24,
                                                endIndent: 24,
                                              ),
                                              Text("6,000 \$")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Gap(12),
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(216, 220, 241, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 12,
                              children: [
                                Text(
                                  "Works",
                                  style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  spacing: 12,
                                  children: [
                                    Text(
                                      "Review client feedback\nPrepare presentation",
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: HabitAppTheme.primary,
                                      foregroundColor: Colors.white,
                                      child: Icon(
                                        Icons.arrow_back_ios_new_sharp,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: HabitAppTheme.primary,
                                      foregroundColor: Colors.white,
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
