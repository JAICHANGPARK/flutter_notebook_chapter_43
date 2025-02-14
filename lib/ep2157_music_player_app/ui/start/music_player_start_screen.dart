import 'package:flutter/material.dart';

class MusicPlayerStartScreen extends StatefulWidget {
  const MusicPlayerStartScreen({super.key});

  @override
  State<MusicPlayerStartScreen> createState() => _MusicPlayerStartScreenState();
}

class _MusicPlayerStartScreenState extends State<MusicPlayerStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            left: -200,
            right: -200,
            top: -32,
            child: Transform.rotate(
              angle: -.2,
              child: Column(
                spacing: 12,
                children: [
                  Container(
                    height: 320,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 240,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2020/10/22/16/14/building-5676506_1280.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 320,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 240,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2025/01/31/09/52/dj-9372007_1280.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
