import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_one/constants/controllers.dart';
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
              ),
              child: CustomText(
                text: menuController.activeItem.value,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}