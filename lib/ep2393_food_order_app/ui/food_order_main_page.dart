import 'package:flutter/material.dart';

class FoodOrderMainPage extends StatefulWidget {
  const FoodOrderMainPage({super.key});

  @override
  State<FoodOrderMainPage> createState() => _FoodOrderMainPageState();
}

class _FoodOrderMainPageState extends State<FoodOrderMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 17, 5, 1),
            ),
          )
        ],
      ),
    );
  }
}
