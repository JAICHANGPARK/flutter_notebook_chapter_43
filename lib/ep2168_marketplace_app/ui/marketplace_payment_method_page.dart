import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class MarketplacePaymentMethodPage extends StatefulWidget {
  const MarketplacePaymentMethodPage({super.key});

  @override
  State<MarketplacePaymentMethodPage> createState() => _MarketplacePaymentMethodPageState();
}

class _MarketplacePaymentMethodPageState extends State<MarketplacePaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(child: Column(children: [
          ],),),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                // color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withValues(
                      alpha: 0.4,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.green,
                        child: Text("1"),
                      ),
                      Gap(12),
                      Text(
                        "\$75",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.orange[50],
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 4,
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.chat_outlined,
                          size: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.deepOrangeAccent,
                        ),
                        child: Row(
                          spacing: 8,
                          children: [
                            Text(
                              "Buy",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.deepOrangeAccent,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
