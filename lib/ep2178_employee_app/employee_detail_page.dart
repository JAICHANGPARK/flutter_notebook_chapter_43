import 'package:flutter/material.dart';

class EmployeeDetailPage extends StatefulWidget {
  const EmployeeDetailPage({super.key});

  @override
  State<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends State<EmployeeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(29, 34, 46, 1),
        centerTitle: true,
        title: Text("Employee details"),
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: Color.fromRGBO(29, 34, 46, 1),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
