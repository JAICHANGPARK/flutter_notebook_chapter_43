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
            spacing: 16,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
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
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_alt_outlined),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
