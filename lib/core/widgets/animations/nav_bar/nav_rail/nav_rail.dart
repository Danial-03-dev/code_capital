import 'package:code_capital/core/cubits/game_nav_cubit/game_nav_cubit.dart';
import 'package:code_capital/core/widgets/animations/text/expandable_text.dart';
import 'package:code_capital/core/widgets/buttons/spring_elevated_button.dart';
import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'wigets/header.dart';
part 'wigets/items_list.dart';
part 'wigets/item.dart';

class NavRail extends StatefulWidget {
  final double width;
  final double expandedWidth;
  final List<({String title, IconData icon})> items;
  final String headerTitle;
  final int duration;

  const NavRail({
    super.key,
    this.width = 72,
    this.expandedWidth = 256,
    this.items = const [],
    this.headerTitle = 'Menu',
    this.duration = 200,
  });

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double iconSize = 28;

    final colors = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: Duration(milliseconds: widget.duration),
      width: isExpanded ? widget.expandedWidth : widget.width,
      color: colors.surface,
      padding: EdgeInsets.all(8),
      child: Column(
        spacing: 24,
        children: [
          _Header(
            onPressed: toggleExpanded,
            isExpanded: isExpanded,
            title: widget.headerTitle,
            iconSize: iconSize,
            duration: widget.duration,
          ),

          _ItemsList(
            iconSize: iconSize,
            isExpanded: isExpanded,
            duration: widget.duration,
            items: widget.items,
          ),
        ],
      ),
    );
  }
}
