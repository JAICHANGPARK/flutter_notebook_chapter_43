import 'dart:ui';

import 'package:flutter/material.dart';

class FoodOrderFavoritePage extends StatefulWidget {
  const FoodOrderFavoritePage({super.key});

  @override
  State<FoodOrderFavoritePage> createState() => _FoodOrderFavoritePageState();
}

class _FoodOrderFavoritePageState extends State<FoodOrderFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 62,
          child: Placeholder(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: .9,
              ),
              itemBuilder: (context, index) {
                return Column(
                  spacing: 6,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/06/17/15/06/pan-pizza-2412474_1280.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 6),
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      child: Text.rich(TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "\$75.00/",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\$90.00",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        CircleAvatar(
                          radius: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OperaHouse Pizza",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Unknown Places",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white.withValues(alpha: .2)
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        )
                      ],
                    )

                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
