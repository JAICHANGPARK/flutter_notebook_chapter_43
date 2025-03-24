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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Searches"),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
