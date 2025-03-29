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
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(62, 76, 30, 1),
                    Color.fromRGBO(22, 24, 10, 1),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            bottom: 0,
            right: 16,
            left: 16,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white.withValues(alpha: .1),
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.chevron_left,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white.withValues(alpha: .1),
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.settings_outlined,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withValues(alpha: .2),
                    ),
                  ),
                  Text("About"),
                  Column(
                    children: [
                      
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
