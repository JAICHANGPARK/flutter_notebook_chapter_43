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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                    ),
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Color.fromRGBO(58, 36, 146, 1),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.check,size: 20,),
                            ),
                            Gap(16),
                            Text("Unlock everything in the app"),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Color.fromRGBO(58, 36, 146, 1),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.check,size: 20,),
                            ),
                            Gap(16),
                            Text("Unlock everything in the app"),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Color.fromRGBO(58, 36, 146, 1),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.check,size: 20,),
                            ),
                            Gap(16),
                            Text("Unlock everything in the app"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    child: Column(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Color.fromRGBO(103, 73, 221, 1),
                                width: 3,
                              ),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    spacing: 12,
                                    children: [
                                      Text(
                                        "Yearly subscription",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "0.83\$/mounth",
                                      ),
                                      Text(
                                        "24.99\$",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                      Text(
                                        "11.99\$",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(103, 73, 221, 1),
                                          fontSize: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(194, 252, 34, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "50% OFF",
                                      style: TextStyle(
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(101, 62, 244, 1),
                    ),
                    margin: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      bottom: 24,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Center(
                      child: Text(
                        "Start your 7-day free trial",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
