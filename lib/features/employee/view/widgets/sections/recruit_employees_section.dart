import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:code_capital/core/storage/models/employee_storage_model.dart';
import 'package:code_capital/core/widgets/configs/custom_scroll_config.dart';
import 'package:code_capital/core/widgets/sections/app_page_section.dart';
import 'package:code_capital/features/employee/cubits/employee_recruits_cubit.dart';
import 'package:code_capital/features/employee/view/widgets/lists/employees_recruit_list/employees_recruit_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecruitEmployeesSection extends StatelessWidget {
  const RecruitEmployeesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;

    final employees = context.watch<CompanyEmployeesCubit>().state;

    final totalEmployees = employees.length;
    final maxEmployees = context.watch<AppCubit>().getCompany().maxEmployees;

    return AppPageSection(
      width: double.infinity,
      title: '📋 Talent Market - $totalEmployees / $maxEmployees',
      child: Expanded(
        child: BlocConsumer<EmployeeRecruitsCubit, List<EmployeeStorageModel>>(
          listener: (_, _) {},
          builder: (context, state) {
            final recruits = state;

            if (recruits.isEmpty) {
              return Center(
                child: Text(
                  'No recruites for hire',
                  style: textStyle.labelLarge,
                ),
              );
            }

            return CustomScrollConfig(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: EmployeesRecruitList(recruits: recruits),
              ),
            );
          },
        ),
      ),
    );
  }
}
