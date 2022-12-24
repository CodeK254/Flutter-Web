import "package:flutter/material.dart";
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/widgets/large_screen.dart';
import 'package:web_one/widgets/small_screen.dart';
import 'package:web_one/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: const LargeScreen(),
        smallScreen: const SmallScreen(),
      ),
    );
  }
}