import 'package:code_capital/core/widgets/items/nav_bar_items/app_top_nav_bar_item.dart';
import 'package:code_capital/core/widgets/nav_bars/app_top_nav_bar/app_top_nav_bar.dart';
import 'package:flutter/material.dart';

class EmployeesPageTopNavBar extends StatelessWidget {
  const EmployeesPageTopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTopNavBar(
      itemsData: [
        AppTopNavBarItemData(iconData: Icons.people, label: 'Employees'),
        AppTopNavBarItemData(iconData: Icons.person_add, label: 'Hire'),
      ],
    );
  }
}
