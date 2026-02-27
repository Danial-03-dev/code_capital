import 'package:code_capital/core/cubits/app_top_nav_cubit/app_top_nav_cubit.dart';
import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:code_capital/core/widgets/page/app_page_body.dart';
import 'package:code_capital/features/employee/cubits/employee_recruits_cubit.dart';
import 'package:code_capital/features/employee/view/pages/employees_details_page.dart';
import 'package:code_capital/features/employee/view/pages/hire_employees_page.dart';
import 'package:code_capital/features/employee/view/widgets/nav_bar/employees_page_top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const EmployeesDetailsPage(),
      const HireEmployeesPage(),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider<EmployeeRecruitsCubit>(
          create: (context) => EmployeeRecruitsCubit(
            companyEmployeesCubit: context.read<CompanyEmployeesCubit>(),
          )..generateNewRecruits(),
        ),
        BlocProvider<AppTopNavCubit>(create: (_) => AppTopNavCubit()),
      ],
      child: Scaffold(
        body: AppPageBody(
          child: Column(
            spacing: 12,
            children: [
              const EmployeesPageTopNavBar(),

              Expanded(
                child: BlocConsumer<AppTopNavCubit, int>(
                  listener: (_, _) {},
                  builder: (context, state) => pages[state],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
