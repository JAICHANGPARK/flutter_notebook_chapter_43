import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
        spacing: 16,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 17, 5, 1),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  bottom: 24,
                  child: Container(
                    color: Colors.red,

                    child: Row(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color(0xffb3d667),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: Row(
                            
                            children: [
                              Icon(HugeIcons.strokeRoundedHome01),
                              Text("Home"),
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
    );
  }
}
