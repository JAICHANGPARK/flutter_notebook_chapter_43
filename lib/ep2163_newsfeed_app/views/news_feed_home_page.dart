import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsFeedHomePage extends StatefulWidget {
  const NewsFeedHomePage({super.key});

  @override
  State<NewsFeedHomePage> createState() => _NewsFeedHomePageState();
}

class _NewsFeedHomePageState extends State<NewsFeedHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 242, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    color: Color.fromRGBO(51, 62, 49, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 32,
                        ),
                        Expanded(
                          child: Row(
                            spacing: 12,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(247, 242, 232, 1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      Icon(
                                        Icons.manage_search,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Search title, author or ISBN",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.camera_alt_outlined,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: .8),
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                ),
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                left: 16,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color.fromRGBO(255, 251, 245, 1),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2022/08/30/15/08/palace-7421313_1280.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          spacing: 8,
                                          children: [
                                            Text(
                                              "NEW'S UPDATES",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(206, 189, 159, 1),
                                              ),
                                            ),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Gap(8),
                                      Divider(
                                        height: 0,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  spacing: 6,
                                                  children: [
                                                    Icon(
                                                      Icons.thumb_up_alt_outlined,
                                                      size: 16,
                                                    ),
                                                    Text(
                                                      "24 Likes",
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  spacing: 6,
                                                  children: [
                                                    Icon(
                                                      Icons.chat_bubble_outline,
                                                      size: 16,
                                                    ),
                                                    Text(
                                                      "5 Comments",
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 0,
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color.fromRGBO(238, 226, 201, 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "g",
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 280,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                left: 16,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color.fromRGBO(255, 251, 245, 1),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                top: 8,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        spacing: 12,
                                        children: [
                                          Container(
                                            height: 42,
                                            width: 42,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4),
                                                color: Color.fromRGBO(238, 226, 201, 1),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "g",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              spacing: 4,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  spacing: 4,
                                                  children: [
                                                    Icon(
                                                      Icons.access_time,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "5 hr ago",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "Dream Walker ",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(111, 124, 96, 1),
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                      TextSpan(text: "made progress on "),
                                                      TextSpan(
                                                        text: "Flutter Live Coding ",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(111, 124, 96, 1),
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(left: 38, top: 20, bottom: 20, right: 16),
                                                child: Row(
                                                  spacing: 12,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Gap(16),
                                                          Text(
                                                            "Flutter Dev",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          Gap(4),
                                                          Text.rich(
                                                            TextSpan(
                                                              children: [
                                                                TextSpan(text: "by "),
                                                                TextSpan(
                                                                  text: " Dreamwalker",
                                                                  style: TextStyle(
                                                                    color: Color.fromRGBO(111, 124, 96, 1),
                                                                    fontWeight: FontWeight.bold,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            spacing: 16,
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  height: 20,
                                                                  margin: EdgeInsets.symmetric(vertical: 16),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.grey,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        width: 84,
                                                                        color: Colors.green,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                "54%",
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 32,
                                                            child: Row(
                                                              spacing: 16,
                                                              children: [
                                                                Expanded(
                                                                  child: Container(padding:
                                                                  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                                                    decoration: BoxDecoration(
                                                                      color: Colors.yellow,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children: [
                                                                        Text("Want to Read"),
                                                                        Icon(Icons.arrow_drop_down_outlined)
                                                                      ],
                                                                    ),
                                                                  ),

                                                                ),
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                                  decoration: BoxDecoration(
                                                                      border: Border.all(
                                                                    color: Colors.grey[300]!,
                                                                  )),
                                                                  child: Row(
                                                                    spacing: 8,
                                                                    children: [
                                                                      Icon(Icons.star_border_purple500_outlined),
                                                                      Text("Rate")
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              indent: 16,
                                              height: 0,
                                            ),
                                            IntrinsicHeight(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        spacing: 6,
                                                        children: [
                                                          Icon(
                                                            Icons.thumb_up_alt_outlined,
                                                            size: 16,
                                                          ),
                                                          Text(
                                                            "24 Likes",
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalDivider(),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        spacing: 6,
                                                        children: [
                                                          Icon(
                                                            Icons.chat_bubble_outline,
                                                            size: 16,
                                                          ),
                                                          Text(
                                                            "5 Comments",
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Suggested Friends",
                                style: TextStyle(),
                              ),
                              Icon(
                                Icons.tune,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: Placeholder(),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                // color: Colors.blue,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 24,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 24,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              spacing: 6,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home_filled),
                                Text(
                                  "HOME",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              spacing: 6,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.menu_book_outlined),
                                Text(
                                  "MY BOOKS",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              spacing: 6,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.search),
                                Text(
                                  "SEARCH",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 6,
                              children: [
                                Icon(Icons.explore_outlined),
                                Text(
                                  "DISCOVER",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 12,
                      top: 0,
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 242, 232, 1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            spacing: 6,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.perm_contact_calendar_outlined,
                              ),
                              Text(
                                "YOUR STORY",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
