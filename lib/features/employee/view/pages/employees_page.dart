import 'package:code_capital/features/employee/cubits/employee_recruits_cubit.dart';
import 'package:code_capital/features/employee/view/pages/hire_employees_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmployeeRecruitsCubit>(
      create: (_) => EmployeeRecruitsCubit()..generateNewRecruits(),
      child: const HireEmployeesPage(),
    );
  }
}
