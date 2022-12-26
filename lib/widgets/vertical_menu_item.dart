import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_one/constants/controllers.dart';
import 'package:web_one/constants/style.dart';
import 'package:web_one/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final Function() onTap;
  final String itemName;
  VerticalMenuItem({super.key, required this.onTap, required this.itemName});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value){
        value ?
          menuController.onHover(itemName)
          :
          menuController.onHover("not hovering");
      },

      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
          ? lightGrey.withOpacity(.1) : Colors.transparent,

          child: Row( 
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if(!menuController.isActive(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: menuController.isHovering(itemName) ? dark : lightGrey,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: dark,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}