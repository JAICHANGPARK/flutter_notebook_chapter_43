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
          Container(
              height: 400,
              decoration: BoxDecoration(color: Colors.white.withValues(alpha: .1)),
              padding: EdgeInsets.all(12),
              child: Column(
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
                  )
                ],
              ))
        ],
      ),
    );
  }
}
