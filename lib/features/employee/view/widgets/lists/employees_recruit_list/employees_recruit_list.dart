import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/features/employee/view/widgets/cards/employee_card/employee_card.dart';
import 'package:flutter/material.dart';

class EmployeesRecruitList extends StatelessWidget {
  final List<EmployeeStorageModel> recruits;
  const EmployeesRecruitList({super.key, this.recruits = const []});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: recruits.asMap().entries.map((entry) {
        final recruit = entry.value;
        final recruitIndex = entry.key;
        return EmployeeCard(employee: recruit, employeeIndex: recruitIndex);
      }).toList(),
    );
  }
}
