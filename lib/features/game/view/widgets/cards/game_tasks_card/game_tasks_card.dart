import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/features/game/view/widgets/cards/game_task_info_card/game_task_info_card.dart';
import 'package:flutter/material.dart';

part 'widgets/cards_list.dart';

class GameTasksCard extends StatelessWidget {
  final double? height;

  const GameTasksCard({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Expanded(
      child: SizedBox(
        height: height,
        child: Card(
          color: colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tasks',
                  style: textTheme.titleLarge?.copyWith(
                    color: theme.primaryColor,
                  ),
                ),

                _CardsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
