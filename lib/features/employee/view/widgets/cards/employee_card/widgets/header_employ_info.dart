part of '../employee_card.dart';

class _HeaderEmployInfo extends StatelessWidget {
  final EmployeeStorageModel employee;

  const _HeaderEmployInfo({required this.employee});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      spacing: 4,
      children: [
        Text(employee.name, style: textTheme.titleSmall),
        SizedBox(
          height: 40,
          child: Text(
            maxLines: 2,
            employee.statement,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
