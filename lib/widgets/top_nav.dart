import 'package:flutter/material.dart';
import 'package:web_one/helpers/responsiveness.dart';

AppBar topNavBar(context, GlobalKey<ScaffoldState> key) =>
  AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    shadowColor: Colors.blue[300],
    leading: !ResponsiveWidget.isSmallScreen(context) ? 
      ,
  );