import "package:flutter/widgets.dart";
import 'package:web_one/constants/controllers.dart';
import 'package:web_one/routes/router.dart';
import 'package:web_one/routes/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overViewPageRoute,
  onGenerateRoute: generateRoute,
);