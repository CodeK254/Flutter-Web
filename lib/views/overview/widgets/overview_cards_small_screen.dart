import 'package:flutter/material.dart';
import 'package:web_one/constants/style.dart';
import 'package:web_one/views/overview/info_cards_small_screen.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      color: light,
      child: Column(
        children: [
          InfoCardsSmallScreen(
            title: "Rides in progress",
            value: "7",
            ontap: (){},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardsSmallScreen(
            title: "Packages delivered",
            value: "17",
            ontap: (){},
            isActive: false,
          ),
          SizedBox(height: _width / 64),
          InfoCardsSmallScreen(
            title: "Cancelled deliveries",
            value: "3",
            ontap: (){},
            isActive: false,
          ),
          SizedBox(height: _width / 64),
          InfoCardsSmallScreen(
            title: "Scheduled deliveries",
            value: "3",
            ontap: (){},
            isActive: false,
          ),
          SizedBox(height: _width / 64),
        ],
      ),
    );
  }
}