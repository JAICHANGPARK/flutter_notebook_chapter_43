import 'package:flutter/material.dart';

class MusicPlayerIdmPage extends StatelessWidget {
  const MusicPlayerIdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "IDM Essentials",
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
