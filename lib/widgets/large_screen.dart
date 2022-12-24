import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red[300],
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              border: Border.all(
                color: Colors.blue.shade700,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}