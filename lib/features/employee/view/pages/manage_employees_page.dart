import 'package:code_capital/features/employee/view/widgets/sections/manage_employees_section.dart';
import 'package:flutter/material.dart';

class ManageEmployeesPage extends StatelessWidget {
  const ManageEmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          // Column widget to make it flex container for expanded down the line
          Column(children: [ManageEmployeesSection()]),
    );
  }
}
