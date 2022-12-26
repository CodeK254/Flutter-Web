import 'package:flutter/material.dart';
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/widgets/horizontal_menu_item.dart';
import 'package:web_one/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final Function() onTap;
  final String itemName;
  const SideMenuItem({super.key, required this.onTap, required this.itemName});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context)){
      return VerticalMenuItem(onTap: onTap, itemName: itemName);
    }

    return HorizontalMenuItem(onTap: onTap, itemName: itemName);
  }
}