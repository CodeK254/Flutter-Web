import 'package:flutter/material.dart';
import 'package:web_one/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String? title;
  final String? amount;
  
  const RevenueInfo({super.key, this.title, this.amount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title\n\n",
              style: TextStyle(
                fontSize: 16,
                color: lightGrey,
              ),
            ),
            TextSpan(
              text: "\$ $amount ",
              style: TextStyle(
                fontSize: 24,
                color: dark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}