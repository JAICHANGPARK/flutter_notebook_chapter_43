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
        SizedBox(
          height: 42,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration()
                  ),
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
          ),
        )
      ],
    );
  }
}
