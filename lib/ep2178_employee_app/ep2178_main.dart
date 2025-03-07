import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2178_employee_app/employee_detail_page.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  const EmployeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeeDetailPage(),
    );
  }
}
