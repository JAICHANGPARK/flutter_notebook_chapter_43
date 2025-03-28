import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodOrderActivityPage extends StatefulWidget {
  const FoodOrderActivityPage({super.key});

  @override
  State<FoodOrderActivityPage> createState() => _FoodOrderActivityPageState();
}

class _FoodOrderActivityPageState extends State<FoodOrderActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Network",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: List.generate(
                  10,
                  (index) => Container(

                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .1),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      // spacing: 12,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            CircleAvatar(),
                            Text(
                              "Dreamwalker",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white.withValues(alpha: .2),
                              foregroundColor: Colors.grey,
                              child: Icon(Icons.more_horiz),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: .2),
                          ),
                          child: Column(
                            spacing: 12,
                            children: [
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/11/08/22/18/spaghetti-2931846_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  spacing: 12,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Preparing pasta in pan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12
                                      ),
                                    ),
                                    Text(
                                      "This baked salmon with a crunchy topping takes just 20 minutes",
                                    ),
                                    Row(
                                      children: [],
                                    ),
                                    Divider(
                                      color: Colors.white.withValues(alpha: .2),
                                      height: 32,
                                      // indent: 12,
                                      // endIndent: 12,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.comment_outlined,
                                          color: Colors.grey,
                                        ),
                                        Gap(8),
                                        Text(
                                          "Add Comment",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 16,
                                        ),
                                        CircleAvatar(
                                          radius: 16,
                                        ),
                                        CircleAvatar(
                                          radius: 16,
                                        ),
                                      ],
                                    )
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
