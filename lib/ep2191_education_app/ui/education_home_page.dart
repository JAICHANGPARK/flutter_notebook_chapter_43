import 'package:flutter/material.dart';


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
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                ),
                Expanded(child: Text("Dreamwalker")),
                CircleAvatar(
                  radius: 24,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
