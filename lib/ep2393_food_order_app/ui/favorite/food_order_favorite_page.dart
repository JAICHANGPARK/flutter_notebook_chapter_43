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
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {},
          ),
        )
      ],
    );
  }
}
