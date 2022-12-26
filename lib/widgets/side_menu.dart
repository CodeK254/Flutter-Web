import 'dart:math';

import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:web_one/constants/controllers.dart';
import 'package:web_one/constants/style.dart';
import 'package:web_one/helpers/local_navigator.dart';
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/routes/routes.dart';
import 'package:web_one/widgets/custom_text.dart';
import 'package:web_one/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
        if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(width: _width / 48),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset("assets/icon/logo2.png", width: 30, height: 30),
                  ),
                  Flexible(
                    child: CustomText(
                      text: "Dash",
                      color: active,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: _width / 48),
                ],
              ),
          ],
        ),
        Divider(color: lightGrey.withOpacity(.1)),
          Column(
            children: sideMenuItems.map((itemName) => SideMenuItem(
              onTap: (){
                if(itemName == authenticationPageRoute){

                }

                if(!menuController.isActive(itemName)){
                  menuController.changeActiveTo(itemName);
                  if(ResponsiveWidget.isSmallScreen(context)){
                    Get.back;
                    Navigator.pop(context);
                  }
                  navigationController.navigateTo(itemName);
                }
              }, 
              itemName: itemName == authenticationPageRoute ? "Log Out" : itemName,
            )).toList(),
          )
        ],
      ),
    );
  }
}