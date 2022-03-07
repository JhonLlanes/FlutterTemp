import 'package:flutter/material.dart';
import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'HOME SCREEN',
        screem: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'listview1',
        name: 'LIST VIEW 1',
        screem: const Listview1Screen(),
        icon: Icons.list_outlined),
    MenuOption(
        route: 'listview2',
        name: 'LIST VIEW 2',
        screem: const Listview2Screen(),
        icon: Icons.line_style_outlined),
    MenuOption(
        route: 'card',
        name: 'CARD SCREEN',
        screem: const CardScreen(),
        icon: Icons.card_membership_outlined),
    MenuOption(
        route: 'alert',
        name: 'ALERT SCREEN',
        screem: const AlertScreen(),
        icon: Icons.align_vertical_center_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screem});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
