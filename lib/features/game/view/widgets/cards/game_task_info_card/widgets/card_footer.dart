part of '../game_task_info_card.dart';

class _CardFooter extends StatelessWidget {
  final Task task;

  const _CardFooter({required this.task});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final progress = task.currentPhaseProgress;
    final daysToExpire = task.daysToExpire;

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 8,
          children: [
            Text('Team:', style: textTheme.bodyMedium),
            Text('Vietanam', style: textTheme.titleMedium),
          ],
        ),

        LinearProgressIndicator(value: progress),

        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Expires:', style: textTheme.bodyMedium),
            Text(
              '$daysToExpire ${daysToExpire == 1 ? 'day' : 'days'}',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
