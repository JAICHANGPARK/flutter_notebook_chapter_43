import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color.fromRGBO(204, 196, 242, 1),
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.clear,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Center(
                      child: Text(
                        "Subscribe to reach\nyour financial goals",
                        style: TextStyle(
                          color: Color.fromRGBO(101, 62, 244, 1),
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            child: Icon(Icons.check),
                          ),
                          Gap(16),
                          Text("Unlock everything in the app"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
