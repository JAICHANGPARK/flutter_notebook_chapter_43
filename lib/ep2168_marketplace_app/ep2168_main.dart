
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_43/ep2168_marketplace_app/ui/marketplace_cart_page.dart';

void main() {
  runApp(MarketPlaceApp());
}


class MarketPlaceApp extends StatelessWidget {
  const MarketPlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MarketplaceCartPage(),
    );
  }
}
