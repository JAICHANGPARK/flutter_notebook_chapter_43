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
                    backgroundColor: Color.fromRGBO(
                      245,
                      247,
                      251,
                      1,
                    ),
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
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " (7)",
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
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(240, 245, 245, 1),
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
                        Gap(4),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromRGBO(240, 245, 245, 1),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(210, 228, 226, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "IT & Software",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.9",
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Gap(72),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                bottom: 0,
                                child: CircleAvatar(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
