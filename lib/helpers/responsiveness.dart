import 'package:flutter/material.dart';
import 'package:web_one/widgets/large_screen.dart';
import 'package:web_one/widgets/small_screen.dart';

const int largeScreenSize = 1368;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  Widget? mediumScreen;
  Widget? smallScreen;
  Widget? customScreen;

  static bool isSmallScreen(BuildContext context) => 
    MediaQuery.of(context).size.width <= mediumScreenSize;

  static bool isMediumScreen(BuildContext context) => 
    MediaQuery.of(context).size.width >= mediumScreenSize &&
    MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) => 
    MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) => 
    MediaQuery.of(context).size.width >= mediumScreenSize &&
    MediaQuery.of(context).size.width <= customScreenSize;

  ResponsiveWidget(
    {
      this.customScreen,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,
    }
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(_width > largeScreenSize){
        print(isCustomScreen(context));
        return largeScreen;
      } 
      else if(_width < largeScreenSize && _width >= mediumScreenSize){
        return mediumScreen ?? largeScreen;
      }
      else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}