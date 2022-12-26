import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_one/constants/controllers.dart';
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/views/overview/info_cards_small_screen.dart';
import 'package:web_one/views/overview/widgets/overview_cards_large_screen.dart';
import 'package:web_one/views/overview/widgets/overview_cards_medium_screen.dart';
import 'package:web_one/views/overview/widgets/overview_cards_small_screen.dart';
import 'package:web_one/views/overview/widgets/revenue_section_large_screen.dart';
import 'package:web_one/views/overview/widgets/revenue_section_small_screen.dart';
import 'package:web_one/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 10 : 5,
                  ),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ResponsiveWidget.isSmallScreen(context) ?  MediaQuery.of(context).size.width / 20 : MediaQuery.of(context).size.width / 100),
          Expanded(
            child: ListView(
              children: [
                if(ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context))
                  if(ResponsiveWidget.isCustomScreen(context))
                    OverviewCardsMediumScreen()
                  else
                    OverviewCardsLargeScreen()
                else
                  OverviewCardsSmallScreen(),
                
                if(ResponsiveWidget.isLargeScreen(context))
                  RevenueSectionLargeScreen()
                else
                  RevenueSectionSmallScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}