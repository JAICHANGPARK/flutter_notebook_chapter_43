import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2181_ai_video_chat_app/ui/ai_video_detail_page.dart';
import 'package:gap/gap.dart';

class AiVideoHomePage extends StatefulWidget {
  const AiVideoHomePage({super.key});

  @override
  State<AiVideoHomePage> createState() => _AiVideoHomePageState();
}

class _AiVideoHomePageState extends State<AiVideoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      spacing: 16,
                      children: [
                        CircleAvatar(
                          radius: 24,
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(71, 71, 71, 1),
                          ),
                          child: Row(
                            spacing: 6,
                            children: [
                              Icon(
                                Icons.diamond_outlined,
                                color: Colors.orange,
                              ),
                              Text(
                                "Shop",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withValues(alpha: .5),
                                offset: Offset(.6, 0),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings_outlined,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withValues(alpha: .6),
                                offset: Offset(.6, 0),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                            ),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(24),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Text(
                                  "Live",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 46,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        decoration: ShapeDecoration(
                                          shape: StadiumBorder(),
                                          color: Colors.white.withValues(alpha: .2),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        margin: EdgeInsets.only(right: 12),
                                        child: Center(
                                          child: Text(
                                            "Trending",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            child: CarouselView.weighted(
                              flexWeights: [1, 8, 1],
                              onTap: (idx){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AiVideoDetailPage(),
                                  ),
                                );
                              },
                              children: List.generate(10, (idx) {
                                return Hero(
                                    tag: "h${idx}",
                                    child: Container());
                              }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 16,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Active",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                  ),
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(16, 16, 0, 16),
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 14),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 32,
                                      ),
                                      Text(
                                        'Dream',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Popular",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                  ),
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),
                          Gap(12),
                          Container(
                            height: 200,
                            child: GridView.count(
                              crossAxisCount: 2,
                              physics: NeverScrollableScrollPhysics(),
                              children: List.generate(
                                10,
                                (idx) {
                                  return Container(
                                    child: Placeholder(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 12,
              child: Column(
                spacing: 6,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(255, 74, 152, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      spacing: 6,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.videocam_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Start Live",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(255, 74, 152, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Color.fromRGBO(71, 71, 71, 1),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
