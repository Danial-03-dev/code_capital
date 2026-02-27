import 'package:code_capital/core/cubits/app_top_nav_cubit/app_top_nav_cubit.dart';
import 'package:code_capital/core/widgets/buttons/spring_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppTopNavBarItemData {
  final IconData iconData;
  final String? label;

  const AppTopNavBarItemData({required this.iconData, this.label});
}

class AppTopNavBarItem extends StatelessWidget {
  final AppTopNavBarItemData data;
  final int itemIndex;

  const AppTopNavBarItem({super.key, required this.data, this.itemIndex = 0});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    const double iconSize = 28;

    final navCubit = context.watch<AppTopNavCubit>();
    final currentIndex = navCubit.state;
    final isSelected = currentIndex == itemIndex;

    final icon = data.iconData;
    final label = data.label;

    return SpringElevatedButton(
      scaleMax: 1.05,
      elevation: 4,
      color: isSelected ? null : theme.colorScheme.surface,
      onPressed: () {
        navCubit.setNavIndex(itemIndex);
      },
      child: Row(
        spacing: 8,
        children: [
          Icon(icon, size: iconSize),
          if (label != null) Text(label, style: textTheme.titleSmall),
        ],
      ),
    );
  }
}
