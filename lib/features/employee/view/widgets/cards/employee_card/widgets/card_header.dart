part of '../employee_card.dart';

class _CardHeader extends StatelessWidget {
  final EmployeeStorageModel employee;

  const _CardHeader({required this.employee});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      spacing: 12,
      children: [
        Text(
          toBeginningOfSentenceCase(employee.role.text),
          style: textTheme.titleLarge?.copyWith(color: theme.primaryColor),
        ),
        const _HeaderAvatar(),
        _HeaderEmployInfo(employee: employee),
      ],
    );
  }
}
