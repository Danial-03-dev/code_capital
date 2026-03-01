import 'package:code_capital/features/employee/view/pages/employees_page.dart';
import 'package:code_capital/features/game/view/pages/game_home_page.dart';
import 'package:flutter/material.dart';

class NavConstants {
  static final navList = [
    (title: 'Home', icon: Icons.home, page: GameHomePage()),
    (title: 'Employees', icon: Icons.people_alt_rounded, page: EmployeesPage()),
    (title: 'Settings', icon: Icons.settings, page: GameHomePage()),
  ];

  static final navBarItems = navList
      .map((item) => (title: item.title, icon: item.icon))
      .toList();
}
