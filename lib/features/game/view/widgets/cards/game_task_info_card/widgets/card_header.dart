part of '../game_task_info_card.dart';

class _CardHeader extends StatelessWidget {
  const _CardHeader();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contract', style: textTheme.titleLarge),
        Text(
          '\$ 23.12k',
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.normal,
            color: theme.primaryColor,
          ),
        ),
      ],
    );
  }
}
