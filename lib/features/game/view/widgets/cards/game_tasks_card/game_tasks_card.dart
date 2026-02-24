import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/game/view/widgets/cards/game_task_info_card/game_task_info_card.dart';
import 'package:flutter/material.dart';

part 'widgets/cards_list.dart';

class GameTasksCard extends StatelessWidget {
  final double? height;

  const GameTasksCard({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return AppPageSection(
      title: 'Tasks',
      height: height,
      child: const _CardsList(),
    );
  }
}
