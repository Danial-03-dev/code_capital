import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/employee/view/widgets/tables/manage_employees_table/manage_employees_table.dart';
import 'package:flutter/material.dart';

class ManageEmployeesPage extends StatelessWidget {
  const ManageEmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppPageSection(
            width: double.infinity,
            title: 'Manage Employees',
            child: ManageEmployeesTable(),
          ),
        ],
      ),
    );
  }
}
