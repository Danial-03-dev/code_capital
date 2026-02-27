import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:flutter/material.dart';

class EmployeesDetailsPage extends StatelessWidget {
  const EmployeesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppPageSection(
            width: double.infinity,
            title: 'Employees',
            child: Column(children: [Text('Ahoo Girl')]),
          ),
        ],
      ),
    );
  }
}
