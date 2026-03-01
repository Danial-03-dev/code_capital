import 'package:code_capital/core/widgets/items/nav_bar_items/app_top_nav_bar_item.dart';
import 'package:code_capital/core/widgets/nav_bars/app_top_nav_bar/app_top_nav_bar.dart';
import 'package:flutter/material.dart';

class JobsPageTopNavBar extends StatelessWidget {
  const JobsPageTopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppTopNavBar(
      itemsData: [
        AppTopNavBarItemData(
          iconData: Icons.assignment_add,
          label: 'Contracts',
        ),
        AppTopNavBarItemData(iconData: Icons.handshake_rounded, label: 'Deals'),
      ],
    );
  }
}
