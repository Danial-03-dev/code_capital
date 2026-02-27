import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/core/widgets/items/nav_bar_items/app_top_nav_bar_item.dart';
import 'package:flutter/material.dart';

class AppTopNavBar extends StatelessWidget {
  final List<AppTopNavBarItemData> itemsData;

  const AppTopNavBar({super.key, this.itemsData = const []});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Card(
        color: theme.colorScheme.surface,
        child: CustomScrollConfig(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                spacing: 12,
                children: itemsData.asMap().entries.map((entry) {
                  final itemData = entry.value;
                  final itemIndex = entry.key;
                  return AppTopNavBarItem(data: itemData, itemIndex: itemIndex);
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
