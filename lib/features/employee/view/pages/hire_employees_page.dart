import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/employee/view/widgets/lists/employees_recruit_list/employees_recruit_list.dart';
import 'package:flutter/material.dart';

class HireEmployeesPage extends StatelessWidget {
  const HireEmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppPageSection(
            width: double.infinity,
            title: '📋 Talent Market',
            child: Expanded(
              child: CustomScrollConfig(
                child: SingleChildScrollView(child: EmployeesRecruitList()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
