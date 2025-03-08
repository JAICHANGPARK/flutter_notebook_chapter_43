import 'package:flutter/material.dart';

class EmployeeAssetsWidget extends StatefulWidget {
  const EmployeeAssetsWidget({super.key});

  @override
  State<EmployeeAssetsWidget> createState() => _EmployeeAssetsWidgetState();
}

class _EmployeeAssetsWidgetState extends State<EmployeeAssetsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "List Assets",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {},
        ))
      ],
    );
  }
}
