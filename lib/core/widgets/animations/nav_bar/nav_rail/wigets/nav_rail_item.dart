import 'package:code_capital/core/cubits/game_nav_cubit/game_nav_cubit.dart';
import 'package:code_capital/core/widgets/animations/text/expandable_text.dart';
import 'package:code_capital/core/widgets/buttons/spring_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavRailItem extends StatelessWidget {
  final bool isExpanded;
  final IconData icon;
  final double? iconSize;
  final String pageTitle;
  final int duration;

  const NavRailItem({
    super.key,
    this.isExpanded = false,
    this.icon = Icons.picture_in_picture_rounded,
    this.iconSize,
    this.pageTitle = '',
    this.duration = 200,
  });

  @override
  Widget build(BuildContext context) {
    final gameNavCubit = context.watch<GameNavCubit>();
    final currentPage = gameNavCubit.getCurrentPage();

    final isSelected = pageTitle == currentPage;

    final colorScheme = Theme.of(context).colorScheme;
    final buttonColor = isSelected ? null : colorScheme.surface;

    void handleNavigation() {
      gameNavCubit.setCurrentPage(pageTitle);
    }

    return SpringElevatedButton(
      onPressed: handleNavigation,
      color: buttonColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: Duration(milliseconds: duration),
            padding: EdgeInsets.only(left: 2, right: isExpanded ? 8 : 0),
            child: Icon(icon, size: iconSize),
          ),

          ExpandableText(
            isExpanded: isExpanded,
            duration: duration,
            textWidget: Text(
              pageTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
