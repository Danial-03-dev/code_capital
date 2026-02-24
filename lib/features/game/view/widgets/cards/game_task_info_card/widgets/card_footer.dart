part of '../game_task_info_card.dart';

class _CardFooter extends StatelessWidget {
  const _CardFooter();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

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

        const LinearProgressIndicator(value: 0.6),

        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Expires:', style: textTheme.bodyMedium),
            Text('3 days', style: textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
