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
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [],
                    )),
                    CircleAvatar(
                      radius: 52 / 2,
                    )
                  ],
                ),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(),
                            ),
                            CircleAvatar(
                              radius: 52 / 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 52 / 2,
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
                                  Text("Favorite"),
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
