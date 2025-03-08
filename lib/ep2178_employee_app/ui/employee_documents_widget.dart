import 'package:flutter/material.dart';

class EmployeeDocumentsWidget extends StatefulWidget {
  const EmployeeDocumentsWidget({super.key});

  @override
  State<EmployeeDocumentsWidget> createState() => _EmployeeDocumentsWidgetState();
}

class _EmployeeDocumentsWidgetState extends State<EmployeeDocumentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("List Document"),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.grey[300]!,
                )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_alt_outlined),
              ),
            )
          ],
        )
      ],
    );
  }
}
