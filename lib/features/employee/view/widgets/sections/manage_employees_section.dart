import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/employee/view/widgets/tables/manage_employees_table/manage_employees_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageEmployeesSection extends StatelessWidget {
  const ManageEmployeesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final employees = context.watch<CompanyEmployeesCubit>().state;

    final totalEmployees = employees.length;
    final maxEmployees = context.watch<AppCubit>().getCompany().maxEmployees;

    return AppPageSection(
      width: double.infinity,
      title: 'Manage Employees - $totalEmployees / $maxEmployees',
      child: ManageEmployeesTable(employees: employees),
    );
  }
}
