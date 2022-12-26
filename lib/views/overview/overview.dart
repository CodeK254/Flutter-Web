import 'package:flutter/material.dart';
import 'package:web_one/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Overview",
          fontSize: 20,
        ),
      ),
    );
  }
}