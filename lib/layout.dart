import "package:flutter/material.dart";
import 'package:web_one/helpers/responsiveness.dart';
import 'package:web_one/routes/routes.dart';
import 'package:web_one/widgets/large_screen.dart';
import 'package:web_one/widgets/side_menu.dart';
import 'package:web_one/widgets/side_menu_item.dart';
import 'package:web_one/widgets/small_screen.dart';
import 'package:web_one/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: const LargeScreen(),
        smallScreen: const SmallScreen(),
      ),
    );
  }
}