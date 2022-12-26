import 'package:flutter/material.dart';
import 'package:web_one/helpers/local_navigator.dart';
import 'package:web_one/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: SideMenu()
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}