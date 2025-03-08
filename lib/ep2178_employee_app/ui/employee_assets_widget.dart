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
      children: [
        Gap(12),
        Text(
          "List Assets",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey[100]!,
              )),
            );
          },
        ))
      ],
    );
  }
}
