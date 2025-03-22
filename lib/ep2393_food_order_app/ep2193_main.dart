import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2393_food_order_app/ui/food_order_main_page.dart';

void main() {
  runApp(FoodOrderApp());
}

class FoodOrderApp extends StatelessWidget {
  const FoodOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodOrderMainPage(),
    );
  }
}
