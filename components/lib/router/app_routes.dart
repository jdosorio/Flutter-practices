
import 'package:components/models/menu_option.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'list-view', icon: Icons.list, name: 'ListView Screen', screen: const ListView1Screen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_sharp, name: 'Alert Screen', screen: const AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home':(BuildContext context) => const HomeScreen(),
  //       'list-view':(BuildContext context) => const ListView1Screen(),
  //       'card':(BuildContext context) => const CardScreen(),
  //       'alert':(BuildContext context) => const AlertScreen()
  // };
}