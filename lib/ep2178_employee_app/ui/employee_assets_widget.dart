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
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                          child: Column(
                            spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Macbook Pro 14 inch 512GB M1 Pro"),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.grey,
                            ),
                            child: Text(
                              "Laptop",
                            ),
                          )
                        ],
                      ))
                    ],
                  )
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}
