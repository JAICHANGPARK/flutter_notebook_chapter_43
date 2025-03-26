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
        Container(
          height: 48,
          padding: EdgeInsets.only(left: 16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CircleAvatar(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withValues(alpha: .2),
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(
                      Icons.inventory_2_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Saved",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: .75,
              ),
              itemBuilder: (context, index) {
                return Column(
                  spacing: 12,
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
                              ),
                            )
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white.withValues(alpha: .2),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Row(
                            spacing: 3,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.yellow,
                          child: Icon(
                            size: 14,
                            Icons.add,
                          ),
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
