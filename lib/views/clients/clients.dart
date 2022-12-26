import 'package:flutter/material.dart';
import 'package:web_one/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Clients",
          fontSize: 20,
        ),
      ),
    );
  }
}