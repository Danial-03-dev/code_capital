import 'package:code_capital/core/widgets/animations/nav_bar/nav_rail/wigets/nav_rail_item.dart';
import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:flutter/material.dart';

class NavRailItemsList extends StatelessWidget {
  final List<({String title, IconData icon})> items;
  final int duration;
  final double? iconSize;
  final bool isExpanded;

  const NavRailItemsList({
    super.key,
    this.items = const [],
    this.duration = 200,
    this.iconSize,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollConfig(
        child: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(milliseconds: duration),
            padding: EdgeInsets.symmetric(horizontal: isExpanded ? 8 : 0),
            child: Column(
              spacing: 16,
              children: items.map((item) {
                return NavRailItem(
                  isExpanded: isExpanded,
                  icon: item.icon,
                  pageTitle: item.title,
                  iconSize: iconSize,
                  duration: duration,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
