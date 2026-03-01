import 'package:code_capital/features/employee/view/widgets/sections/recruit_employees_section.dart';
import 'package:flutter/material.dart';

class HireEmployeesPage extends StatelessWidget {
  const HireEmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [RecruitEmployeesSection()]));
  }
}
