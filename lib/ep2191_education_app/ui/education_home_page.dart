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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                  ),
                  Gap(12),
                  Expanded(
                    child: Text(
                      "Dreamwalker",
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
