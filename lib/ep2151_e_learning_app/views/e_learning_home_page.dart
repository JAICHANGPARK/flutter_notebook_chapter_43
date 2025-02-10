import 'package:flutter/material.dart';

class ELearningHomePage extends StatefulWidget {
  const ELearningHomePage({super.key});

  @override
  State<ELearningHomePage> createState() => _ELearningHomePageState();
}

class _ELearningHomePageState extends State<ELearningHomePage> {
  ValueNotifier<int> currentTopics = ValueNotifier(0);
  List<String> topics = ["Arts and Humanities", "Business", "Computer Science"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(19, 101, 255, 1),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -10,
                  top: 72,
                  bottom: 24,
                  child: Transform.rotate(
                    angle: -.3,
                    child: Container(
                      height: 72,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: .2),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  top: 48,
                  bottom: 48,
                  child: Transform.rotate(
                    angle: -.3,
                    child: Container(
                      height: 72,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: .4),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 62,
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            // prefix: Icon(Icons.search),
                            hintText: "What do you want to learn?",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Topics",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        decoration: BoxDecoration(),
                        margin: EdgeInsets.only(left: 16),
                        child: ValueListenableBuilder(
                            valueListenable: currentTopics,
                            builder: (context, value, _) {
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: topics.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                    margin: EdgeInsets.only(
                                      right: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: value == index ? Color.fromRGBO(19, 101, 255, 1) : Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${topics[index]}",
                                        style: TextStyle(
                                          color: value == index ? Colors.white : Colors.black,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Most Popular Certificates",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 320,
                          child: ListView.builder(
                            itemBuilder: (context, index) {},
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Earn your Degree",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 320,
                        child: Placeholder(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
              ),
              label: "Learn",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
