part of '../employee_card.dart';

class _HireButton extends StatelessWidget {
  final EmployeeStorageModel employee;
  final int employeeIndex;

  const _HireButton({required this.employee, required this.employeeIndex});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    void handleHireEmployee() {
      if (isEmployeeLimitReached(context)) {
        showAppSnackbar(context, 'Upgrade your plan to add more employees.');
        return;
      }

      context.read<EmployeeRecruitsCubit>().hireEmployee(employeeIndex);
    }

    return SpringElevatedButton(
      onPressed: handleHireEmployee,
      elevation: 2,
      child: Text(
        'Hire for \$${numberCompactFormat(employee.hiringCost)}',
        style: textTheme.titleSmall,
      ),
    );
  }
}
