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
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("Employee details"),
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: Color.fromRGBO(29, 34, 46, 1),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Dreamwalker",
                            ),
                            Row(
                              children: [
                                Icon(Icons.timelapse),
                                Text("Fulltime"),
                                Icon(Icons.business_center_outlined),
                                Text("Onsite"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
