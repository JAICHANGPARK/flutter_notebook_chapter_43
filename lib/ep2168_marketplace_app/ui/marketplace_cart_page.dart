import 'package:flutter/material.dart';

class MarketplaceCartPage extends StatefulWidget {
  const MarketplaceCartPage({super.key});

  @override
  State<MarketplaceCartPage> createState() => _MarketplaceCartPageState();
}

class _MarketplaceCartPageState extends State<MarketplaceCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Column()),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
