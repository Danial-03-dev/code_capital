part of '../employee_card.dart';

class _EmployInfo extends StatelessWidget {
  final EmployeeStorageModel employee;

  const _EmployInfo({required this.employee});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        InlineIconInfo(
          icon: Icons.monetization_on_rounded,
          info: '\$${numberCompactFormat(employee.pay)}/day',
          color: theme.primaryColor,
        ),
        InlineIconInfo(
          icon: Icons.psychology,
          info: '${employee.skill}/10',
          color: theme.colorScheme.secondary,
        ),
      ],
    );
  }
}
