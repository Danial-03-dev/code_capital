import 'package:code_capital/core/constants/nav_constants.dart';
import 'package:code_capital/core/widgets/animations/nav_bar/nav_rail/nav_rail.dart';
import 'package:flutter/material.dart';

class GameNavBar extends StatelessWidget {
  const GameNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavRail(
      headerTitle: 'Code Capital',
      items: NavConstants.navBarItems,
    );
  }
}
