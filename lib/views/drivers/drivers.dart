import 'package:flutter/material.dart';
import 'package:web_one/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Drivers",
          fontSize: 20,
        ),
      ),
    );
  }
}