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
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "List Document",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
