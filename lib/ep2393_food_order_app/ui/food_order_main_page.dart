import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodOrderMainPage extends StatefulWidget {
  const FoodOrderMainPage({super.key});

  @override
  State<FoodOrderMainPage> createState() => _FoodOrderMainPageState();
}

class _FoodOrderMainPageState extends State<FoodOrderMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        spacing: 16,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 17, 5, 1),
            ),
            padding: EdgeInsets.fromLTRB(24, 62, 24, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 24,
              children: [
                Row(
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "California, usa",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )),
                    CircleAvatar(
                      radius: 52 / 2,
                      backgroundColor: Color.fromRGBO(28, 33, 11, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.notifications_none),
                    )
                  ],
                ),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(28, 33, 11, 1),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type ingredients...",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                  ),
                                  prefixIconColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(vertical: 16)
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 52 / 2,
                              backgroundColor: Color.fromRGBO(34, 42, 11, 1),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.tune),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 52 / 2,
                      backgroundColor: Color.fromRGBO(28, 33, 11, 1),
                      foregroundColor: Colors.white,
                      child: Icon(Icons.access_time),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.blue,
                    child: IndexedStack(
                      index: pageNum,
                      children: [
                        Container(
                          color: Colors.grey,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.blue,
                        ),
                        Container(
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(50, 50, 48, 1),
                      ),
                      padding: EdgeInsets.all(2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 4,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageNum = 0;
                              });
                            },
                            child: pageNum == 0
                                ? Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color(0xffb3d667),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(HugeIcons.strokeRoundedHome01),
                                        Text("Home"),
                                      ],
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    child: Icon(HugeIcons.strokeRoundedHome01),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageNum = 1;
                              });
                            },
                            child: pageNum == 1
                                ? Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color(0xffb3d667),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(
                                          Icons.local_pizza_outlined,
                                        ),
                                        Text("Favorite"),
                                      ],
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    child: Icon(
                                      Icons.local_pizza_outlined,
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageNum = 2;
                              });
                            },
                            child: pageNum == 2
                                ? Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color(0xffb3d667),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(
                                          Icons.library_add_outlined,
                                        ),
                                        Text("Activity"),
                                      ],
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    child: Icon(
                                      Icons.library_add_outlined,
                                    ),
                                  ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageNum = 3;
                              });
                            },
                            child: pageNum == 3
                                ? Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color(0xffb3d667),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(Icons.person_2_rounded),
                                        Text("Profile"),
                                      ],
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    child: Icon(Icons.person_2_rounded),
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
