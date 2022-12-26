import 'package:flutter/material.dart';
import 'package:web_one/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Authentication",
          fontSize: 20,
        ),
      ),
    );
  }
}