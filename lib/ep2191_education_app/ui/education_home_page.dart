import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EducationHomePage extends StatefulWidget {
  const EducationHomePage({super.key});

  @override
  State<EducationHomePage> createState() => _EducationHomePageState();
}

class _EducationHomePageState extends State<EducationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                  ),
                  Gap(12),
                  Expanded(
                    child: Text(
                      "Dreamwalker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Color.fromRGBO(245, 247, 251, 1),
                    child: Icon(
                      Icons.notifications_active_outlined,
                    ),
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Your activities today",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "(7)",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(
                          radius: 26,
                        ),
                        Text(
                          "Lessons",
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26,
                  ),
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  Placeholder(),
                  Placeholder(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
