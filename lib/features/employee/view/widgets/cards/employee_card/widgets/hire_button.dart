part of '../employee_card.dart';

class _HireButton extends StatelessWidget {
  final EmployeeStorageModel employee;

  const _HireButton({required this.employee});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return SpringElevatedButton(
      onPressed: () {},
      elevation: 2,
      child: Text(
        'Hire for \$${numberCompactFormat(employee.hiringCost)}',
        style: textTheme.titleSmall,
      ),
    );
  }
}
