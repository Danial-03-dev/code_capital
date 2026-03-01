import 'package:code_capital/core/cubits/app_cubit/app_cubit.dart';
import 'package:code_capital/core/cubits/company_cubits/company_employees_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool isEmployeeLimitReached(BuildContext context) {
  final maxEmployees = context.read<AppCubit>().getCompany().maxEmployees;
  final totalEmployees = context.read<CompanyEmployeesCubit>().state.length;

  return totalEmployees >= maxEmployees;
}
