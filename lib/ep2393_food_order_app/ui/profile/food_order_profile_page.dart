import 'package:flutter/material.dart';

class FoodOrderProfilePage extends StatefulWidget {
  const FoodOrderProfilePage({super.key});

  @override
  State<FoodOrderProfilePage> createState() => _FoodOrderProfilePageState();
}

class _FoodOrderProfilePageState extends State<FoodOrderProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromRGBO(62, 76, 30, 1),
                Color.fromRGBO(22, 24, 10, 1),
                Colors.black,
              ],
            )),
          )),
        ],
      ),
    );
  }
}
