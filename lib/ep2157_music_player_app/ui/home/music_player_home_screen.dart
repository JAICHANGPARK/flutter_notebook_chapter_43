import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class MusicPlayerHomeScreen extends StatefulWidget {
  const MusicPlayerHomeScreen({super.key});

  @override
  State<MusicPlayerHomeScreen> createState() => _MusicPlayerHomeScreenState();
}

class _MusicPlayerHomeScreenState extends State<MusicPlayerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 12,
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      HugeIcons.strokeRoundedSearch01,
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      HugeIcons.strokeRoundedNotification01,
                    ),
                  ),
                ],
              ),
            ),
            Gap(16),
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "IDM",
                        ),
                        Tab(
                          text: "Rock",
                        ),
                        Tab(
                          text: "Pop",
                        ),
                        Tab(
                          text: "Alternative",
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            Container(
              height: 72,
              color: Colors.grey[100],
              child: Row(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
