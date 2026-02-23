import 'package:code_capital/features/game/view/pages/game_home_page.dart';
import 'package:flutter/material.dart';

class NavConstants {
  static final navList = [
    (title: 'Home', icon: Icons.home, page: GameHomePage()),
    (title: 'Money', icon: Icons.monetization_on, page: GameHomePage()),
    (title: 'Assets', icon: Icons.currency_bitcoin, page: GameHomePage()),
    (title: 'Settings', icon: Icons.settings, page: GameHomePage()),
  ];

  static final navBarItems = navList
      .map((item) => (title: item.title, icon: item.icon))
      .toList();
}
