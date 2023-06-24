import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const inicialRoute = "home";

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: "home",
    //     icon: Icons.home,
    //     name: "home screen",
    //     screen: const HomeScreen()),
    MenuOption(
        route: "listview1",
        icon: Icons.list,
        name: "listview tipo 1",
        screen: const Listview1Screen()),
    MenuOption(
        route: "listview2",
        icon: Icons.list,
        name: "listview tipo 2",
        screen: const Listview1Screen()),
    MenuOption(
        route: "alert",
        icon: Icons.dangerous,
        name: "alertas - alerts",
        screen: const AlertScreen()),
    MenuOption(
        route: "card",
        icon: Icons.card_travel_sharp,
        name: "tarjetas - card",
        screen: const CardScreen()),
   MenuOption(
        route: "avatar",
        icon: Icons.supervised_user_circle,
        name: "Circle avatar",
        screen: const AvatarScreen()),
  MenuOption(
        route: "animated",
        icon: Icons.play_circle_outline_rounded,
        name: "Animated Container",
        screen: const AnimatedScreen()),
         MenuOption(
        route: "Inputs",
        icon: Icons.input_rounded,
        name: "Input y Form",
        screen: const InputScreen()),
         MenuOption(
        route: "Slider",
        icon: Icons.slideshow_outlined,
        name: "Slider",
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   "home": (context) => const HomeScreen(),
  //   "listView1": (context) => const Listview1Screen(),
  //   "listView2": (context) => const Listview2Screen(),
  //   "alert": (context) => const AlertScreen(),
  //   "card": (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
