import 'package:flutter/material.dart';
import 'package:web_one/views/overview/info_cards.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCards(
          title: "Rides in progress",
          value: "7",
          ontap: (){},
          topColor: Colors.orange,
        ),
        SizedBox(width: _width / 64),
        InfoCards(
          title: "Packages delivered",
          value: "17",
          ontap: (){},
          topColor: Colors.green,
        ),
        SizedBox(width: _width / 64),
        InfoCards(
          title: "Cancelled deliveries",
          value: "3",
          ontap: (){},
          topColor: Colors.red,
        ),
        SizedBox(width: _width / 64),
        InfoCards(
          title: "Scheduled deliveries",
          value: "3",
          ontap: (){},
          topColor: Colors.yellow,
        ),
        SizedBox(width: _width / 64),
      ],
    );
  }
}