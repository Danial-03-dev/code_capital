part of '../game_task_info_card.dart';

class _CardHeader extends StatelessWidget {
  final Task task;

  const _CardHeader({required this.task});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final taskType = getTaskType(task);
    final reward = task.reward;
    final currentPhase = task.currentPhase.getPhase();

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(taskType, style: textTheme.titleLarge),
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$ ${numberCompactFormat(reward)}',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.normal,
                color: theme.primaryColor,
              ),
            ),
            Text(currentPhase, style: textTheme.labelLarge),
          ],
        ),
      ],
    );
  }
}
