import 'package:flutter/material.dart';

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
              children: [
                Container(
                  height: 440,
                  decoration: BoxDecoration(color: Colors.white.withValues(alpha: .1)),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    spacing: 12,
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
                            child: Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: .2),
                          ),
                          child: Column(
                            spacing: 12,
                            children: [
                              Container(
                                height: 180,
                                child: Placeholder(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Preparing pasta in pan"),
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
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 440,
                  decoration: BoxDecoration(color: Colors.white.withValues(alpha: .1)),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    spacing: 12,
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
                            backgroundColor: Colors.white.withValues(alpha: .2),
                            radius: 16,
                            child: Icon(Icons.more_horiz),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: .2),
                          ),
                          child: Column(
                            spacing: 12,
                            children: [
                              Container(
                                height: 180,
                                child: Placeholder(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Preparing pasta in pan"),
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
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
