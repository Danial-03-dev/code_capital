import 'package:code_capital/features/employee/cubits/employee_recruits_cubit.dart';
import 'package:code_capital/features/employee/view/widgets/cards/employee_card/employee_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesRecruitList extends StatelessWidget {
  const EmployeesRecruitList({super.key});

  @override
  Widget build(BuildContext context) {
    final recruits = context.watch<EmployeeRecruitsCubit>().state;

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
