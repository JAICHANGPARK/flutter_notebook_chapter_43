import 'package:flutter/material.dart';

class FoodOrderHomePage extends StatefulWidget {
  const FoodOrderHomePage({super.key});

  @override
  State<FoodOrderHomePage> createState() => _FoodOrderHomePageState();
}

class _FoodOrderHomePageState extends State<FoodOrderHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Searches",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 12,
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: CircleAvatar(),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 8,
                                    child: Icon(
                                      Icons.check,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Text(
                          "Potato",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                        // Expanded(
                        //   child: Stack(
                        //     children: [
                        //       Positioned.fill(
                        //         child: CircleAvatar(),
                        //       ),
                        //       Positioned(
                        //         right: 0,
                        //         top: 0,
                        //         child: CircleAvatar(
                        //           radius: 4,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Text(
                        //   "Potato",
                        // )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xffb3d667),
                borderRadius: BorderRadius.circular(12),
              ),
              // child: Placeholder(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Searches",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: .9,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(10, (idx) {
                return Column(
                  spacing: 6,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2017/06/17/15/06/pan-pizza-2412474_1280.jpg",
                                ),
                              )),
                          child: Stack(
                            children: [],
                          )),
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        CircleAvatar(
                          radius: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OperaHouse Pizza",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Unknown Places",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
