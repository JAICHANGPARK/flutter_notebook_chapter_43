import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2191_education_app/ui/education_home_page.dart';

void main() {
  runApp(MobileEducationApp());
}

class MobileEducationApp extends StatelessWidget {
  const MobileEducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EducationHomePage(),
    );
  }
}
