import 'package:flutter/material.dart';
import 'package:web_one/routes/routes.dart';
import 'package:web_one/views/clients/clients.dart';
import 'package:web_one/views/drivers/drivers.dart';
import 'package:web_one/views/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case overViewPageRoute:
      return _getPageRoute(const OverviewPage());

    case driversPageRoute:
      return _getPageRoute(const DriversPage());

    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());

    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}