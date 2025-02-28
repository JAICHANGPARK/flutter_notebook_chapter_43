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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              top: 24,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back),
                      ),
                      Expanded(
                        child: Center(
                            child: Text(
                          "Payment method",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black,
                        child: Icon(Icons.file_upload_outlined),
                      ),
                    ],
                  ),
                  Gap(24),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Card(
                      elevation: 4,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          spacing: 12,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 6,
                                children: [
                                  Text(
                                    "Luxury Face Cream",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Premium Moisturizer for Radiant, Youthful, Hydrated, and Smooth...more",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text("IDR: 15.999.000")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                          foregroundColor: Colors.white,
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
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
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.orange[50],
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
      ),
    );
  }
}
