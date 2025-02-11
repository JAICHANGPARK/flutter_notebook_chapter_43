import 'package:flutter/material.dart';


void main() {
runApp(PaywallScreenApp());

}

class PaywallScreenApp extends StatelessWidget {
  const PaywallScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaywallScreen(),
    );
  }
}
