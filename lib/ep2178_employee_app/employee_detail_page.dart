import 'package:flutter/material.dart';

import 'ui/employee_assets_widget.dart';

class EmployeeDetailPage extends StatefulWidget {
  const EmployeeDetailPage({super.key});

  @override
  State<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends State<EmployeeDetailPage> {
  List<String> tabs = ["Payroll", "Time manageements", "Assets", "Document", "Training", "Finance"];

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
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(),
                  Row(
                    spacing: 16,
                    children: [
                      CircleAvatar(
                        radius: 28,
                      ),
                      Expanded(
                        child: Column(
                          spacing: 12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dreamwalker",
                            ),
                            Row(
                              spacing: 8,
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  size: 16,
                                ),
                                Text("Fulltime"),
                                Icon(
                                  Icons.business_center_outlined,
                                  size: 16,
                                ),
                                Text("Onsite"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: tabs.length,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            tabAlignment: TabAlignment.start,
                            tabs: tabs
                                .map((e) => Tab(
                                      text: e,
                                    ))
                                .toList(),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Container(),
                                Container(),
                                EmployeeAssetsWidget(),
                                Container(),
                                Container(),
                                Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
