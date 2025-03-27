import 'package:flutter/material.dart';

class FoodOrderActivityPage extends StatefulWidget {
  const FoodOrderActivityPage({super.key});

  @override
  State<FoodOrderActivityPage> createState() => _FoodOrderActivityPageState();
}

class _FoodOrderActivityPageState extends State<FoodOrderActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        )
      ],
    );
  }
}
