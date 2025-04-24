import 'package:flutter/material.dart';
import 'package:portfolio_app/services/navigation_service.dart';

class AppUI {
  static double dw =
      MediaQuery.of(NavigationService.navigatorKey.currentContext!).size.width /
          100;
  static double dh =
      MediaQuery.of(NavigationService.navigatorKey.currentContext!)
              .size
              .height /
          100;

  static double sp = dw / 3.0;
}
