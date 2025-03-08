import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      spacing: 12,
      children: [
        Container(),
        Text(
          "List Assets",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 140,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
              ),
              child: Column(
                children: [

                ],
              ),
            );
          },
        ))
      ],
    );
  }
}
