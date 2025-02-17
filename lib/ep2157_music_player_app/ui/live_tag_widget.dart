

import 'package:flutter/material.dart';

class LiveTagWidget extends StatelessWidget {
  const LiveTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Colors.black,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: Colors.deepOrange,
          ),
          Text(
            "LIVE",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
