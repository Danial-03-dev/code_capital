import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:code_capital/core/utils/employees/format_employees_for_table.dart';
import 'package:code_capital/core/widgets/tables/app_table/app_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum _ActionType {
  fire;

  @override
  String toString() {
    switch (this) {
      case _ActionType.fire:
        return 'Fire';
    }
  }
}

class ManageEmployeesTable extends StatelessWidget {
  const ManageEmployeesTable({super.key});

  @override
  Widget build(BuildContext context) {
    final employees = context.watch<CompanyEmployeesCubit>().state;

    final EmployeeTableData(
      indexes: indexes,
      names: names,
      roles: roles,
      skills: skills,
      pays: pays,
    ) = formatEmployeesForTable(
      employees,
    );

    void handleSelect(String value, List<String> row) {
      final employeeCubit = context.read<CompanyEmployeesCubit>();

      if (value == _ActionType.fire.toString()) {
        final employeeIndex =
            int.parse(row[0]) - 1; // Subtract 1 to make index start from 0
        employeeCubit.removeEmployeeAt(employeeIndex);
      }
    }

    return AppTable(
      emptyTableText: 'No Employees',
      data: [
        AppTableDataModel(label: '#', values: indexes, width: 48),
        AppTableDataModel(label: 'Name', values: names),
        AppTableDataModel(label: 'Role', values: roles),
        AppTableDataModel(label: 'Skill', values: skills),
        AppTableDataModel(label: 'Pay', values: pays),
      ],
      options: [
        AppTableActionModel(
          value: _ActionType.fire.toString(),
          icon: Icons.person_remove_alt_1_rounded,
        ),
      ],
      onSelect: handleSelect,
    );
  }
}
